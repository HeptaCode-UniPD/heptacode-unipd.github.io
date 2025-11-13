#!/usr/bin/env python3
"""
Spellcheck Typst files using a text dictionary.
Usage: python3 spellcheck.py <dictionary.txt> <file1.typ> [file2.typ ...]
       python3 spellcheck.py <dictionary.txt> --all  (checks all .typ files recursively)
       python3 spellcheck.py <dictionary.txt> --all --verbose  (show line numbers)
"""

import sys
import re
from pathlib import Path
from collections import defaultdict


# Compile regex patterns once for better performance
PATTERNS = {
    'line_comment': re.compile(r'//.*?$', re.MULTILINE),
    'block_comment': re.compile(r'/\*.*?\*/', re.DOTALL),
    'typst_function': re.compile(r'#[a-zA-Z_][a-zA-Z0-9_]*\b(?:\[(?:[^\[\]]|\[[^\[\]]*\])*\]|\([^)]*\))?'),
    'code_block': re.compile(r'```.*?```', re.DOTALL),
    'inline_code': re.compile(r'`[^`]+`'),
    'url': re.compile(r'https?://[^\s\)]+'),
    'special_chars': re.compile(r'[#\[\]{}*_~=<>|\\]'),
    'words': re.compile(r"[a-zA-ZàèéìòùÀÈÉÌÒÙáéíóúÁÉÍÓÚäëïöüÄËÏÖÜâêîôûÂÊÎÔÛ']+")
}


def load_dictionary(dict_path):
    """Load dictionary from text file into a set."""
    try:
        with open(dict_path, 'r', encoding='utf-8') as f:
            words = {line.strip().lower() for line in f if line.strip()}
        print(f"Loaded {len(words)} words from dictionary")
        return words
    except FileNotFoundError:
        print(f"Error: Dictionary file '{dict_path}' not found")
        sys.exit(1)


def extract_text_from_typst(content):
    """Extract readable text from Typst content, removing markup."""
    # Remove comments and code in order
    content = PATTERNS['line_comment'].sub('', content)
    content = PATTERNS['block_comment'].sub('', content)
    content = PATTERNS['code_block'].sub('', content)
    content = PATTERNS['inline_code'].sub('', content)
    content = PATTERNS['typst_function'].sub('', content)
    content = PATTERNS['url'].sub('', content)
    content = PATTERNS['special_chars'].sub(' ', content)
    return content


def extract_words_with_lines(text, original_content):
    """Extract words from text with their line numbers."""
    word_locations = defaultdict(set)
    
    # Split original content into lines for line number tracking
    lines = original_content.split('\n')
    
    for line_num, line in enumerate(lines, 1):
        # Extract text from this line
        cleaned_line = extract_text_from_typst(line)
        words = PATTERNS['words'].findall(cleaned_line)
        
        for word in words:
            if len(word) > 1:  # Skip single characters
                word_locations[word.lower()].add(line_num)
    
    return word_locations


def extract_words(text):
    """Extract words from text."""
    words = PATTERNS['words'].findall(text)
    return [w.lower() for w in words if len(w) > 1]


def spellcheck_file(filepath, dictionary, verbose=False, project_root=None):
    """Spellcheck a single Typst file."""
    # Resolve file path relative to project root if provided
    if project_root:
        filepath = Path(project_root) / filepath
    
    filepath = Path(filepath)
    
    # Debug output
    print(f"\nProcessing: {filepath}")
    if not filepath.exists():
        print(f"  → File does not exist at: {filepath.resolve()}")
        return False
    
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        print(f"  → Read {len(content)} characters")
    except FileNotFoundError:
        print(f"Error: File '{filepath}' not found")
        return False
    except UnicodeDecodeError:
        print(f"Error: Cannot decode '{filepath}' as UTF-8")
        return False
    
    if verbose:
        # Extract words with line numbers
        word_locations = extract_words_with_lines(content, content)
        misspelled = {word: lines for word, lines in word_locations.items() 
                     if word not in dictionary}
        
        print(f"  → Found {len(word_locations)} unique words, {len(misspelled)} misspelled")
        
        if misspelled:
            print(f"\nMisspellings in {filepath}:")
            for word in sorted(misspelled.keys()):
                lines = sorted(misspelled[word])
                lines_str = ', '.join(map(str, lines[:5]))  # Show first 5 occurrences
                if len(lines) > 5:
                    lines_str += f" (and {len(lines) - 5} more)"
                print(f"  {word:20s} [lines: {lines_str}]")
            return False
    else:
        # Fast mode without line numbers
        text = extract_text_from_typst(content)
        words = extract_words(text)
        misspelled = {word for word in words if word not in dictionary}
        
        print(f"  → Found {len(set(words))} unique words, {len(misspelled)} misspelled")
        
        if misspelled:
            print(f"\nMisspellings in {filepath}:")
            for word in sorted(misspelled):
                print(f"  {word}")
            return False
    
    print(f"✓ No misspellings found in {filepath}")
    return True


def find_all_typst_files(start_path='.'):
    """Recursively find all .typ files from start_path."""
    typst_files = []
    start_path = Path(start_path).resolve()
    
    # Use rglob to search recursively through all subdirectories
    for file_path in start_path.rglob('*.typ'):
        # Skip files in hidden directories or hidden files
        if any(part.startswith('.') for part in file_path.parts):
            continue
        if file_path.name.startswith('.'):
            continue
        typst_files.append(str(file_path))
    
    return sorted(typst_files)  # Sort for consistent output


def main():
    if len(sys.argv) < 3:
        print("Usage: python3 spellcheck.py <dictionary.txt> <file1.typ> [file2.typ ...]")
        print("       python3 spellcheck.py <dictionary.txt> --all [--verbose]")
        print("\nOptions:")
        print("  --all      Check all .typ files recursively")
        print("  --verbose  Show line numbers for misspellings")
        print("\nExamples:")
        print("  python3 spellcheck.py dict.txt document.typ")
        print("  python3 spellcheck.py dict.txt --all")
        print("  python3 spellcheck.py dict.txt --all --verbose")
        sys.exit(1)
    
    dict_path = sys.argv[1]
    
    # Determine project root first
    current_dir = Path.cwd()
    if '.github' in current_dir.parts:
        parts = current_dir.parts
        github_index = parts.index('.github')
        project_root = Path(*parts[:github_index])
    else:
        project_root = current_dir
    
    # Resolve dictionary path relative to project root
    dict_path_resolved = Path(project_root) / dict_path
    if not dict_path_resolved.exists():
        # Try as absolute or relative to current directory
        dict_path_resolved = Path(dict_path)
    
    dictionary = load_dictionary(str(dict_path_resolved))
    
    verbose = '--verbose' in sys.argv
    
    if '--all' in sys.argv:
        print(f"Searching for .typ files from: {project_root}")
        typst_files = find_all_typst_files(project_root)
        
        if not typst_files:
            print("No .typ files found in current directory and subdirectories")
            sys.exit(0)
        
        print(f"Found {len(typst_files)} .typ files to check:")
        for file in typst_files:
            print(f"  - {file}")
    else:
        # Filter out flags from file list
        typst_files = [arg for arg in sys.argv[2:] if not arg.startswith('--')]
        
        if not typst_files:
            print("Error: No files specified")
            sys.exit(1)
        
        print(f"Checking {len(typst_files)} specified files...")
        print(f"Working from project root: {project_root}")
    
    print("\nStarting spellcheck...")
    if verbose:
        print("(Verbose mode: showing line numbers)")
    
    all_passed = True
    files_checked = 0
    
    # Only pass project_root for relative paths (not when using --all which returns absolute paths)
    use_project_root = project_root if '--all' not in sys.argv else None
    
    for file_path in typst_files:
        if spellcheck_file(file_path, dictionary, verbose, use_project_root):
            files_checked += 1
        else:
            all_passed = False
            files_checked += 1
    
    print(f"\nChecked {files_checked} files")
    
    if all_passed:
        print("✓ All files passed spellcheck!")
        sys.exit(0)
    else:
        print("✗ Some files have spelling errors")
        sys.exit(1)


if __name__ == "__main__":
    main()