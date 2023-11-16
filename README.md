# NutCase
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Build Status](https://app.bitrise.io/app/b24c32bd-7988-4f93-8e17-b00cd5ced3ce/status.svg?token=JdNcl-36HjxFIMsi1jGJNQ)](https://app.bitrise.io/app/b24c32bd-7988-4f93-8e17-b00cd5ced3ce)

Swift String extensions for changing case

## Usage

```
import NutCase

"this is a sentence".camelCased() // --> thisIsASentence

"this is a sentence".sentenceCased() // --> This is a sentence

"this is a sentence".titleCased() // --> This Is A Sentence

"this is a sentence".pascalCased() // --> ThisIsASentence

"this is a sentence".snakeCased() // --> this_is_a_sentence

"this is a sentence".kebabCased() // --> this-is-a-sentence
```

## Installation via Swift Package Manager

Add the dependency on NutCase with Swift Package Manager in `Xcode`

1. `File` -> `Swift Packages` -> `Add Package Dependency`
2. Enter `https://github.com/DrewMilloy/NutCase`.
3. Accept the default rules (`Version: 'Up to Next Major'`).

