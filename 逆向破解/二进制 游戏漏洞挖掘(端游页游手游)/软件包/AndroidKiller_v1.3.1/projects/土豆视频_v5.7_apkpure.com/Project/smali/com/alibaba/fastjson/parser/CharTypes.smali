.class public final Lcom/alibaba/fastjson/parser/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field public static final ASCII_CHARS:[C

.field public static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_singleQuotes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0x100

    const/16 v6, 0x5c

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 23
    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    .line 26
    new-array v2, v3, [Z

    sput-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    .line 28
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 29
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_1

    .line 30
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    aput-boolean v4, v2, v0

    .line 28
    :cond_0
    :goto_1
    add-int/lit8 v2, v0, 0x1

    int-to-char v0, v2

    goto :goto_0

    .line 31
    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    .line 32
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    aput-boolean v4, v2, v0

    goto :goto_1

    .line 33
    :cond_2
    const/16 v2, 0x5f

    if-ne v0, v2, :cond_0

    .line 34
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    aput-boolean v4, v2, v0

    goto :goto_1

    .line 39
    :cond_3
    new-array v2, v3, [Z

    sput-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    .line 42
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 43
    const/16 v2, 0x41

    if-lt v0, v2, :cond_5

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_5

    .line 44
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v4, v2, v0

    .line 42
    :cond_4
    :goto_3
    add-int/lit8 v2, v0, 0x1

    int-to-char v0, v2

    goto :goto_2

    .line 45
    :cond_5
    const/16 v2, 0x61

    if-lt v0, v2, :cond_6

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_6

    .line 46
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v4, v2, v0

    goto :goto_3

    .line 47
    :cond_6
    const/16 v2, 0x5f

    if-ne v0, v2, :cond_7

    .line 48
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v4, v2, v0

    goto :goto_3

    .line 49
    :cond_7
    const/16 v2, 0x30

    if-lt v0, v2, :cond_4

    const/16 v2, 0x39

    if-gt v0, v2, :cond_4

    .line 50
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    aput-boolean v4, v2, v0

    goto :goto_3

    .line 55
    :cond_8
    new-array v2, v3, [B

    sput-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    .line 56
    new-array v2, v3, [B

    sput-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    .line 58
    const/16 v2, 0x80

    new-array v2, v2, [C

    sput-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    .line 60
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v2, v7

    .line 61
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v2, v4

    .line 62
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    .line 63
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x3

    aput-byte v4, v2, v3

    .line 64
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v2, v5

    .line 65
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x5

    aput-byte v4, v2, v3

    .line 66
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x6

    aput-byte v4, v2, v3

    .line 67
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x7

    aput-byte v4, v2, v3

    .line 68
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0x8

    aput-byte v4, v2, v3

    .line 69
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0x9

    aput-byte v4, v2, v3

    .line 70
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0xa

    aput-byte v4, v2, v3

    .line 71
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0xb

    aput-byte v4, v2, v3

    .line 72
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0xc

    aput-byte v4, v2, v3

    .line 73
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0xd

    aput-byte v4, v2, v3

    .line 74
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    const/16 v3, 0x22

    aput-byte v4, v2, v3

    .line 75
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v2, v6

    .line 77
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    aput-byte v4, v2, v7

    .line 78
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    aput-byte v4, v2, v4

    .line 79
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    .line 80
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x3

    aput-byte v4, v2, v3

    .line 81
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    aput-byte v4, v2, v5

    .line 82
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x5

    aput-byte v4, v2, v3

    .line 83
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x6

    aput-byte v4, v2, v3

    .line 84
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/4 v3, 0x7

    aput-byte v4, v2, v3

    .line 85
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x8

    aput-byte v4, v2, v3

    .line 86
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x9

    aput-byte v4, v2, v3

    .line 87
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0xa

    aput-byte v4, v2, v3

    .line 88
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0xb

    aput-byte v4, v2, v3

    .line 89
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0xc

    aput-byte v4, v2, v3

    .line 90
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0xd

    aput-byte v4, v2, v3

    .line 91
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0xe

    aput-byte v5, v2, v3

    .line 92
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0xf

    aput-byte v5, v2, v3

    .line 93
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x10

    aput-byte v5, v2, v3

    .line 94
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x11

    aput-byte v5, v2, v3

    .line 95
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x12

    aput-byte v5, v2, v3

    .line 96
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x13

    aput-byte v5, v2, v3

    .line 97
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x14

    aput-byte v5, v2, v3

    .line 98
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x15

    aput-byte v5, v2, v3

    .line 99
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x16

    aput-byte v5, v2, v3

    .line 100
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x17

    aput-byte v5, v2, v3

    .line 101
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x18

    aput-byte v5, v2, v3

    .line 102
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x19

    aput-byte v5, v2, v3

    .line 103
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x20

    aput-byte v5, v2, v3

    .line 104
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    aput-byte v4, v2, v6

    .line 105
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x27

    aput-byte v4, v2, v3

    .line 107
    const/16 v1, 0x7f

    .local v1, "i":I
    :goto_4
    const/16 v2, 0xa0

    if-gt v1, v2, :cond_9

    .line 108
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v2, v1

    .line 109
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[B

    aput-byte v5, v2, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 112
    :cond_9
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0x30

    aput-char v3, v2, v7

    .line 113
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0x31

    aput-char v3, v2, v4

    .line 114
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/4 v3, 0x2

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 115
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/4 v3, 0x3

    const/16 v4, 0x33

    aput-char v4, v2, v3

    .line 116
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0x34

    aput-char v3, v2, v5

    .line 117
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/4 v3, 0x5

    const/16 v4, 0x35

    aput-char v4, v2, v3

    .line 118
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/4 v3, 0x6

    const/16 v4, 0x36

    aput-char v4, v2, v3

    .line 119
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/4 v3, 0x7

    const/16 v4, 0x37

    aput-char v4, v2, v3

    .line 120
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0x8

    const/16 v4, 0x62

    aput-char v4, v2, v3

    .line 121
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0x9

    const/16 v4, 0x74

    aput-char v4, v2, v3

    .line 122
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0xa

    const/16 v4, 0x6e

    aput-char v4, v2, v3

    .line 123
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0xb

    const/16 v4, 0x76

    aput-char v4, v2, v3

    .line 124
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0xc

    const/16 v4, 0x66

    aput-char v4, v2, v3

    .line 125
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0xd

    const/16 v4, 0x72

    aput-char v4, v2, v3

    .line 126
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0x22

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 127
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0x27

    const/16 v4, 0x27

    aput-char v4, v2, v3

    .line 128
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    const/16 v3, 0x2f

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    .line 129
    sget-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aput-char v6, v2, v6

    .line 132
    const/16 v2, 0x60

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    return-void

    .line 23
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 132
    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
