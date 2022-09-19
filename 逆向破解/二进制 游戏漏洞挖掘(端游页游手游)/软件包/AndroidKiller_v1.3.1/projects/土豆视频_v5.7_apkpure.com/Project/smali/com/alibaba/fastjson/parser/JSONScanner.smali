.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# static fields
.field protected static final typeFieldName:[C


# instance fields
.field public final ISO8601_LEN_0:I

.field public final ISO8601_LEN_1:I

.field public final ISO8601_LEN_2:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 39
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    .line 193
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    .line 194
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    .line 195
    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    .line 43
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    .line 45
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 49
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 52
    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 67
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 68
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 71
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method static final charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "dest"    # [C

    .prologue
    const/4 v2, 0x0

    .line 131
    array-length v0, p2

    .line 132
    .local v0, "destLen":I
    add-int v3, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v2

    .line 136
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 137
    aget-char v3, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 473
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 476
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 479
    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    .line 482
    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    .line 486
    if-ne p4, v2, :cond_4

    .line 487
    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    .line 498
    :cond_2
    if-ne p6, v2, :cond_5

    .line 499
    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    .line 514
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 490
    :cond_4
    if-ne p4, v3, :cond_0

    .line 491
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    .line 502
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    .line 503
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    .line 506
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 507
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method private checkTime(CCCCCC)Z
    .locals 6
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 418
    if-ne p1, v2, :cond_1

    .line 419
    if-lt p2, v2, :cond_0

    if-le p2, v3, :cond_2

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    .line 423
    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    .line 434
    :cond_2
    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    .line 435
    if-lt p4, v2, :cond_0

    if-gt p4, v3, :cond_0

    .line 446
    :cond_3
    if-lt p5, v2, :cond_7

    if-gt p5, v4, :cond_7

    .line 447
    if-lt p6, v2, :cond_0

    if-gt p6, v3, :cond_0

    .line 458
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 426
    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    .line 427
    if-lt p2, v2, :cond_0

    const/16 v1, 0x34

    if-le p2, v1, :cond_2

    goto :goto_0

    .line 438
    :cond_6
    if-ne p3, v5, :cond_0

    .line 439
    if-eq p4, v2, :cond_3

    goto :goto_0

    .line 450
    :cond_7
    if-ne p5, v5, :cond_0

    .line 451
    if-eq p6, v2, :cond_4

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 6
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .prologue
    .line 462
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 463
    .local v1, "local":Ljava/util/Locale;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 464
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, p1

    mul-int/lit16 v4, v4, 0x3e8

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p2

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p3

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p4

    add-int v3, v4, v5

    .line 465
    .local v3, "year":I
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, p5

    mul-int/lit8 v4, v4, 0xa

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p6

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .line 466
    .local v2, "month":I
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, p7

    mul-int/lit8 v4, v4, 0xa

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p8

    add-int v0, v4, v5

    .line 467
    .local v0, "day":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 468
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 469
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 470
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "hash"    # I
    .param p4, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 2
    .param p1, "srcPos"    # I
    .param p2, "dest"    # [C
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1042
    return-void
.end method

.method public bytesValue()[B
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    return v0
.end method

.method public final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 56
    const/16 v0, 0x1a

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method protected final copyTo(II[C)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 76
    return-void
.end method

.method public final indexOf(CI)I
    .locals 1
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()C
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 182
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 184
    .local v0, "chLocal":C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 185
    .local v1, "sp":I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 186
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public scanFieldBoolean([C)Z
    .locals 11
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v10, 0x65

    const/16 v9, 0x2c

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 955
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 957
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 958
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1037
    :goto_0
    return v3

    .line 962
    :cond_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v6, p1

    add-int v1, v5, v6

    .line 964
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 967
    .local v0, "ch":C
    const/16 v5, 0x74

    if-ne v0, v5, :cond_4

    .line 968
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x72

    if-eq v5, v6, :cond_1

    .line 969
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 970
    goto :goto_0

    .line 972
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-eq v5, v6, :cond_2

    .line 973
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 974
    goto :goto_0

    .line 976
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_3

    .line 977
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 978
    goto :goto_0

    .line 981
    :cond_3
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 982
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 983
    const/4 v3, 0x1

    .line 1010
    .local v3, "value":Z
    :goto_1
    if-ne v0, v9, :cond_a

    .line 1011
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1012
    const/4 v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1013
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 984
    .end local v1    # "index":I
    .end local v3    # "value":Z
    .restart local v2    # "index":I
    :cond_4
    const/16 v5, 0x66

    if-ne v0, v5, :cond_9

    .line 985
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_5

    .line 986
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 987
    goto :goto_0

    .line 989
    :cond_5
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_6

    .line 990
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 991
    goto :goto_0

    .line 993
    :cond_6
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-eq v5, v6, :cond_7

    .line 994
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 995
    goto/16 :goto_0

    .line 997
    :cond_7
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_8

    .line 998
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 999
    goto/16 :goto_0

    .line 1002
    :cond_8
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1003
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1004
    const/4 v3, 0x0

    .restart local v3    # "value":Z
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 1006
    .end local v1    # "index":I
    .end local v3    # "value":Z
    .restart local v2    # "index":I
    :cond_9
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1007
    goto/16 :goto_0

    .line 1014
    .end local v2    # "index":I
    .restart local v1    # "index":I
    .restart local v3    # "value":Z
    :cond_a
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_f

    .line 1015
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1016
    if-ne v0, v9, :cond_b

    .line 1017
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1018
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1031
    :goto_2
    const/4 v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1019
    :cond_b
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_c

    .line 1020
    const/16 v4, 0xf

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1021
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 1022
    :cond_c
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_d

    .line 1023
    const/16 v4, 0xd

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1024
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 1025
    :cond_d
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_e

    .line 1026
    const/16 v4, 0x14

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 1028
    :cond_e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1029
    goto/16 :goto_0

    .line 1033
    :cond_f
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1034
    goto/16 :goto_0
.end method

.method public scanFieldInt([C)I
    .locals 13
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v12, 0x30

    const/16 v11, 0x2c

    const/16 v10, 0x10

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 523
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 524
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 525
    .local v4, "startPos":I
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 527
    .local v3, "startChar":C
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v7, v8, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v7

    if-nez v7, :cond_1

    .line 528
    const/4 v7, -0x2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 589
    :cond_0
    :goto_0
    return v5

    .line 532
    :cond_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, p1

    add-int v1, v7, v8

    .line 534
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 537
    .local v0, "ch":C
    if-lt v0, v12, :cond_4

    const/16 v7, 0x39

    if-gt v0, v7, :cond_4

    .line 538
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v7, v0

    .local v5, "value":I
    move v1, v2

    .line 540
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 541
    if-lt v0, v12, :cond_2

    const/16 v7, 0x39

    if-gt v0, v7, :cond_2

    .line 542
    mul-int/lit8 v7, v5, 0xa

    sget-object v8, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v8, v8, v0

    add-int v5, v7, v8

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 543
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_3

    .line 544
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 545
    goto :goto_0

    .line 547
    :cond_3
    add-int/lit8 v7, v2, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 551
    if-gez v5, :cond_5

    .line 552
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 553
    goto :goto_0

    .line 556
    .end local v5    # "value":I
    :cond_4
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 557
    goto :goto_0

    .line 560
    .restart local v5    # "value":I
    :cond_5
    if-ne v0, v11, :cond_6

    .line 561
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 562
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 563
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 567
    :cond_6
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_0

    .line 568
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 569
    if-ne v0, v11, :cond_7

    .line 570
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 571
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 586
    :goto_2
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 572
    :cond_7
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_8

    .line 573
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 574
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 575
    :cond_8
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_9

    .line 576
    const/16 v6, 0xd

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 577
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 578
    :cond_9
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_a

    .line 579
    const/16 v6, 0x14

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 581
    :cond_a
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 582
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 583
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 584
    goto/16 :goto_0
.end method

.method public scanFieldLong([C)J
    .locals 12
    .param p1, "fieldName"    # [C

    .prologue
    .line 880
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 881
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 882
    .local v4, "startPos":I
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 884
    .local v3, "startChar":C
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v8, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 885
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 886
    const-wide/16 v6, 0x0

    .line 951
    :goto_0
    return-wide v6

    .line 889
    :cond_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, p1

    add-int v1, v5, v8

    .line 891
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 894
    .local v0, "ch":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-gt v0, v5, :cond_3

    .line 895
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, v0

    int-to-long v6, v5

    .local v6, "value":J
    move v1, v2

    .line 897
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 898
    const/16 v5, 0x30

    if-lt v0, v5, :cond_1

    const/16 v5, 0x39

    if-gt v0, v5, :cond_1

    .line 899
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, v0

    int-to-long v10, v5

    add-long v6, v8, v10

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 900
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_1
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_2

    .line 901
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 902
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 904
    :cond_2
    add-int/lit8 v5, v2, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 908
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    .line 909
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 910
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 911
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 912
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 915
    .end local v6    # "value":J
    :cond_3
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 916
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 917
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 918
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 921
    .restart local v6    # "value":J
    :cond_4
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_5

    .line 922
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 923
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 924
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 926
    :cond_5
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_a

    .line 927
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 928
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_6

    .line 929
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 930
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 945
    :goto_2
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 931
    :cond_6
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_7

    .line 932
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 933
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 934
    :cond_7
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_8

    .line 935
    const/16 v5, 0xd

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 936
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 937
    :cond_8
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_9

    .line 938
    const/16 v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 940
    :cond_9
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 941
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 942
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 943
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 947
    :cond_a
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 948
    const-wide/16 v6, 0x0

    goto/16 :goto_0
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 13
    .param p1, "fieldName"    # [C

    .prologue
    .line 593
    const/4 v11, 0x0

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 594
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 595
    .local v8, "startPos":I
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 606
    .local v6, "startChar":C
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v11, v12, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v11

    if-nez v11, :cond_0

    .line 607
    const/4 v11, -0x2

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 608
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v9

    .line 705
    :goto_0
    return-object v9

    .line 611
    :cond_0
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v12, p1

    add-int v4, v11, v12

    .line 613
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 614
    .local v0, "ch":C
    const/16 v11, 0x22

    if-eq v0, v11, :cond_1

    .line 615
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 617
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 620
    :cond_1
    const/4 v2, 0x0

    .line 623
    .local v2, "hasSpecial":Z
    move v7, v5

    .line 624
    .local v7, "startIndex":I
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/16 v12, 0x22

    invoke-virtual {v11, v12, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 625
    .local v1, "endIndex":I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_2

    .line 626
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "unclosed str"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 629
    :cond_2
    sub-int v11, v1, v7

    invoke-virtual {p0, v7, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v10

    .line 630
    .local v10, "stringVal":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v3, v11, :cond_3

    .line 631
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_4

    .line 632
    const/4 v2, 0x1

    .line 637
    :cond_3
    if-eqz v2, :cond_5

    .line 638
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 640
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 630
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 643
    :cond_5
    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 644
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 645
    move-object v9, v10

    .line 675
    .local v9, "strVal":Ljava/lang/String;
    const/16 v11, 0x2c

    if-ne v0, v11, :cond_6

    .line 676
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 677
    const/4 v11, 0x3

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 679
    :cond_6
    const/16 v11, 0x7d

    if-ne v0, v11, :cond_b

    .line 680
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 681
    const/16 v11, 0x2c

    if-ne v0, v11, :cond_7

    .line 682
    const/16 v11, 0x10

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 683
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 698
    :goto_2
    const/4 v11, 0x4

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 684
    :cond_7
    const/16 v11, 0x5d

    if-ne v0, v11, :cond_8

    .line 685
    const/16 v11, 0xf

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 686
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 687
    :cond_8
    const/16 v11, 0x7d

    if-ne v0, v11, :cond_9

    .line 688
    const/16 v11, 0xd

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 689
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 690
    :cond_9
    const/16 v11, 0x1a

    if-ne v0, v11, :cond_a

    .line 691
    const/16 v11, 0x14

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 693
    :cond_a
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 694
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 695
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 696
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 700
    :cond_b
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 702
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 9
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 779
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v7, v8, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 780
    const/4 v7, -0x2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 781
    const/4 v4, 0x0

    .line 876
    :goto_0
    return-object v4

    .line 786
    :cond_0
    const-class v7, Ljava/util/HashSet;

    invoke-virtual {p2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 787
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 798
    .local v4, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, p1

    add-int v2, v7, v8

    .line 800
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 802
    .local v0, "ch":C
    const/16 v7, 0x5b

    if-eq v0, v7, :cond_3

    .line 803
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 804
    const/4 v4, 0x0

    goto :goto_0

    .line 788
    .end local v0    # "ch":C
    .end local v3    # "index":I
    .end local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    const-class v7, Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 789
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1

    .line 792
    .end local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1

    .line 793
    .end local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 794
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 807
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ch":C
    .restart local v3    # "index":I
    .restart local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 810
    :goto_2
    const/16 v7, 0x22

    if-eq v0, v7, :cond_4

    .line 811
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 812
    const/4 v4, 0x0

    goto :goto_0

    .line 816
    :cond_4
    move v5, v2

    .line 818
    .local v5, "start":I
    :goto_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 819
    const/16 v7, 0x22

    if-ne v0, v7, :cond_5

    .line 820
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 822
    .local v6, "strVal":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 833
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_6

    .line 834
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v3

    .line 835
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_2

    .line 827
    .end local v2    # "index":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_5
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_e

    .line 828
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 829
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 838
    .end local v3    # "index":I
    .restart local v2    # "index":I
    .restart local v6    # "strVal":Ljava/lang/String;
    :cond_6
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_7

    .line 839
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 847
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 848
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_8

    .line 849
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 850
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 843
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_7
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 844
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 852
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_8
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_d

    .line 853
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 854
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_9

    .line 855
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 856
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 870
    :goto_4
    const/4 v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 857
    :cond_9
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_a

    .line 858
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 859
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 860
    :cond_a
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_b

    .line 861
    const/16 v7, 0xd

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 862
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 863
    :cond_b
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_c

    .line 864
    const/16 v7, 0x14

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 865
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 867
    :cond_c
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 868
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 872
    :cond_d
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 873
    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v6    # "strVal":Ljava/lang/String;
    :cond_e
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_3
.end method

.method public scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 13
    .param p1, "fieldName"    # [C
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v12, 0x7d

    const/16 v11, 0x2c

    const/16 v10, 0x22

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 709
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 711
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v7, v8, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 712
    const/4 v7, -0x2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v5, v6

    .line 772
    :goto_0
    return-object v5

    .line 716
    :cond_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, p1

    add-int v2, v7, v8

    .line 718
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 719
    .local v0, "ch":C
    if-eq v0, v10, :cond_1

    .line 720
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v5, v6

    .line 721
    goto :goto_0

    .line 725
    :cond_1
    move v4, v3

    .line 726
    .local v4, "start":I
    const/4 v1, 0x0

    .local v1, "hash":I
    move v2, v3

    .line 728
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 729
    if-ne v0, v10, :cond_2

    .line 730
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 731
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 733
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    sub-int v8, v3, v4

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v7, v4, v8, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, "strVal":Ljava/lang/String;
    if-ne v0, v11, :cond_3

    .line 746
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 747
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 737
    .end local v5    # "strVal":Ljava/lang/String;
    :cond_2
    mul-int/lit8 v7, v1, 0x1f

    add-int v1, v7, v0

    .line 739
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_9

    .line 740
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v5, v6

    .line 741
    goto :goto_0

    .line 749
    .restart local v5    # "strVal":Ljava/lang/String;
    :cond_3
    if-ne v0, v12, :cond_8

    .line 750
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 751
    if-ne v0, v11, :cond_4

    .line 752
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 753
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 766
    :goto_2
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 754
    :cond_4
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_5

    .line 755
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 756
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 757
    :cond_5
    if-ne v0, v12, :cond_6

    .line 758
    const/16 v6, 0xd

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 759
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 760
    :cond_6
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_7

    .line 761
    const/16 v6, 0x14

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 763
    :cond_7
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v5, v6

    .line 764
    goto/16 :goto_0

    .line 768
    :cond_8
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v5, v6

    .line 769
    goto/16 :goto_0

    .end local v5    # "strVal":Ljava/lang/String;
    :cond_9
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_1
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 51
    .param p1, "strict"    # Z

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v17, v0

    sub-int v48, v10, v17

    .line 204
    .local v48, "rest":I
    if-nez p1, :cond_4

    const/16 v10, 0xd

    move/from16 v0, v48

    if-le v0, v10, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v30

    .line 206
    .local v30, "c0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v31

    .line 207
    .local v31, "c1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v32

    .line 208
    .local v32, "c2":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v33

    .line 209
    .local v33, "c3":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v34

    .line 210
    .local v34, "c4":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v35

    .line 212
    .local v35, "c5":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v10, v10, v48

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v36

    .line 213
    .local v36, "c_r0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v10, v10, v48

    add-int/lit8 v10, v10, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v37

    .line 214
    .local v37, "c_r1":C
    const/16 v10, 0x2f

    move/from16 v0, v30

    if-ne v0, v10, :cond_4

    const/16 v10, 0x44

    move/from16 v0, v31

    if-ne v0, v10, :cond_4

    const/16 v10, 0x61

    move/from16 v0, v32

    if-ne v0, v10, :cond_4

    const/16 v10, 0x74

    move/from16 v0, v33

    if-ne v0, v10, :cond_4

    const/16 v10, 0x65

    move/from16 v0, v34

    if-ne v0, v10, :cond_4

    const/16 v10, 0x28

    move/from16 v0, v35

    if-ne v0, v10, :cond_4

    const/16 v10, 0x2f

    move/from16 v0, v36

    if-ne v0, v10, :cond_4

    const/16 v10, 0x29

    move/from16 v0, v37

    if-ne v0, v10, :cond_4

    .line 216
    const/16 v47, -0x1

    .line 217
    .local v47, "plusIndex":I
    const/16 v40, 0x6

    .local v40, "i":I
    :goto_0
    move/from16 v0, v40

    move/from16 v1, v48

    if-ge v0, v1, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v10, v10, v40

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 219
    .local v29, "c":C
    const/16 v10, 0x2b

    move/from16 v0, v29

    if-ne v0, v10, :cond_1

    .line 220
    move/from16 v47, v40

    .line 217
    :cond_0
    add-int/lit8 v40, v40, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const/16 v10, 0x30

    move/from16 v0, v29

    if-lt v0, v10, :cond_2

    const/16 v10, 0x39

    move/from16 v0, v29

    if-le v0, v10, :cond_0

    .line 225
    .end local v29    # "c":C
    :cond_2
    const/4 v10, -0x1

    move/from16 v0, v47

    if-ne v0, v10, :cond_3

    .line 226
    const/4 v10, 0x0

    .line 414
    .end local v30    # "c0":C
    .end local v31    # "c1":C
    .end local v32    # "c2":C
    .end local v33    # "c3":C
    .end local v34    # "c4":C
    .end local v35    # "c5":C
    .end local v36    # "c_r0":C
    .end local v37    # "c_r1":C
    .end local v40    # "i":I
    .end local v47    # "plusIndex":I
    :goto_1
    return v10

    .line 228
    .restart local v30    # "c0":C
    .restart local v31    # "c1":C
    .restart local v32    # "c2":C
    .restart local v33    # "c3":C
    .restart local v34    # "c4":C
    .restart local v35    # "c5":C
    .restart local v36    # "c_r0":C
    .restart local v37    # "c_r1":C
    .restart local v40    # "i":I
    .restart local v47    # "plusIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v46, v10, 0x6

    .line 229
    .local v46, "offset":I
    sub-int v10, v47, v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v45

    .line 230
    .local v45, "numberText":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    .line 232
    .local v42, "millis":J
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v41

    .line 233
    .local v41, "local":Ljava/util/Locale;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    move-object/from16 v0, v41

    invoke-static {v10, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 234
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-wide/from16 v0, v42

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 236
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 237
    const/4 v10, 0x1

    goto :goto_1

    .line 241
    .end local v30    # "c0":C
    .end local v31    # "c1":C
    .end local v32    # "c2":C
    .end local v33    # "c3":C
    .end local v34    # "c4":C
    .end local v35    # "c5":C
    .end local v36    # "c_r0":C
    .end local v37    # "c_r1":C
    .end local v40    # "i":I
    .end local v41    # "local":Ljava/util/Locale;
    .end local v42    # "millis":J
    .end local v45    # "numberText":Ljava/lang/String;
    .end local v46    # "offset":I
    .end local v47    # "plusIndex":I
    :cond_4
    const/16 v10, 0x8

    move/from16 v0, v48

    if-eq v0, v10, :cond_5

    const/16 v10, 0xe

    move/from16 v0, v48

    if-eq v0, v10, :cond_5

    const/16 v10, 0x11

    move/from16 v0, v48

    if-ne v0, v10, :cond_11

    .line 242
    :cond_5
    if-eqz p1, :cond_6

    .line 243
    const/4 v10, 0x0

    goto :goto_1

    .line 246
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 247
    .local v2, "y0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 248
    .local v3, "y1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 249
    .local v4, "y2":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 250
    .local v5, "y3":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 251
    .local v6, "M0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 252
    .local v7, "M1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 253
    .local v8, "d0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 255
    .local v9, "d1":C
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_7

    .line 256
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 259
    invoke-direct/range {v10 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 262
    const/16 v10, 0x8

    move/from16 v0, v48

    if-eq v0, v10, :cond_10

    .line 263
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 264
    .local v11, "h0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 265
    .local v12, "h1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 266
    .local v13, "m0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 267
    .local v14, "m1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 268
    .local v15, "s0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .local v16, "s1":C
    move-object/from16 v10, p0

    .line 270
    invoke-direct/range {v10 .. v16}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v10

    if-nez v10, :cond_8

    .line 271
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 274
    :cond_8
    const/16 v10, 0x11

    move/from16 v0, v48

    if-ne v0, v10, :cond_f

    .line 275
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v26

    .line 276
    .local v26, "S0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v27

    .line 277
    .local v27, "S1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 278
    .local v28, "S2":C
    const/16 v10, 0x30

    move/from16 v0, v26

    if-lt v0, v10, :cond_9

    const/16 v10, 0x39

    move/from16 v0, v26

    if-le v0, v10, :cond_a

    .line 279
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 281
    :cond_a
    const/16 v10, 0x30

    move/from16 v0, v27

    if-lt v0, v10, :cond_b

    const/16 v10, 0x39

    move/from16 v0, v27

    if-le v0, v10, :cond_c

    .line 282
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 284
    :cond_c
    const/16 v10, 0x30

    move/from16 v0, v28

    if-lt v0, v10, :cond_d

    const/16 v10, 0x39

    move/from16 v0, v28

    if-le v0, v10, :cond_e

    .line 285
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 288
    :cond_e
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v26

    mul-int/lit8 v10, v10, 0x64

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v27

    mul-int/lit8 v17, v17, 0xa

    add-int v10, v10, v17

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v28

    add-int v42, v10, v17

    .line 293
    .end local v26    # "S0":C
    .end local v27    # "S1":C
    .end local v28    # "S2":C
    .local v42, "millis":I
    :goto_2
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v11

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v12

    add-int v39, v10, v17

    .line 294
    .local v39, "hour":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v13

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v14

    add-int v44, v10, v17

    .line 295
    .local v44, "minute":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v15

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v16

    add-int v49, v10, v17

    .line 303
    .end local v11    # "h0":C
    .end local v12    # "h1":C
    .end local v13    # "m0":C
    .end local v14    # "m1":C
    .end local v15    # "s0":C
    .end local v16    # "s1":C
    .local v49, "seconds":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 304
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xc

    move/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 305
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xd

    move/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 306
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    move/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 308
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 309
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 290
    .end local v39    # "hour":I
    .end local v42    # "millis":I
    .end local v44    # "minute":I
    .end local v49    # "seconds":I
    .restart local v11    # "h0":C
    .restart local v12    # "h1":C
    .restart local v13    # "m0":C
    .restart local v14    # "m1":C
    .restart local v15    # "s0":C
    .restart local v16    # "s1":C
    :cond_f
    const/16 v42, 0x0

    .restart local v42    # "millis":I
    goto :goto_2

    .line 297
    .end local v11    # "h0":C
    .end local v12    # "h1":C
    .end local v13    # "m0":C
    .end local v14    # "m1":C
    .end local v15    # "s0":C
    .end local v16    # "s1":C
    .end local v42    # "millis":I
    :cond_10
    const/16 v39, 0x0

    .line 298
    .restart local v39    # "hour":I
    const/16 v44, 0x0

    .line 299
    .restart local v44    # "minute":I
    const/16 v49, 0x0

    .line 300
    .restart local v49    # "seconds":I
    const/16 v42, 0x0

    .restart local v42    # "millis":I
    goto :goto_3

    .line 312
    .end local v2    # "y0":C
    .end local v3    # "y1":C
    .end local v4    # "y2":C
    .end local v5    # "y3":C
    .end local v6    # "M0":C
    .end local v7    # "M1":C
    .end local v8    # "d0":C
    .end local v9    # "d1":C
    .end local v39    # "hour":I
    .end local v42    # "millis":I
    .end local v44    # "minute":I
    .end local v49    # "seconds":I
    :cond_11
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    move/from16 v0, v48

    if-ge v0, v10, :cond_12

    .line 313
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 316
    :cond_12
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-eq v10, v0, :cond_13

    .line 317
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 319
    :cond_13
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-eq v10, v0, :cond_14

    .line 320
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 323
    :cond_14
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 324
    .restart local v2    # "y0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 325
    .restart local v3    # "y1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 326
    .restart local v4    # "y2":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 327
    .restart local v5    # "y3":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 328
    .restart local v6    # "M0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 329
    .restart local v7    # "M1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 330
    .restart local v8    # "d0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 331
    .restart local v9    # "d1":C
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_15

    .line 332
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v17, p0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    .line 335
    invoke-direct/range {v17 .. v25}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 337
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v50

    .line 338
    .local v50, "t":C
    const/16 v10, 0x54

    move/from16 v0, v50

    if-eq v0, v10, :cond_16

    const/16 v10, 0x20

    move/from16 v0, v50

    if-ne v0, v10, :cond_17

    if-nez p1, :cond_17

    .line 339
    :cond_16
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    move/from16 v0, v48

    if-ge v0, v10, :cond_1a

    .line 340
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 342
    :cond_17
    const/16 v10, 0x22

    move/from16 v0, v50

    if-eq v0, v10, :cond_18

    const/16 v10, 0x1a

    move/from16 v0, v50

    if-ne v0, v10, :cond_19

    .line 343
    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xb

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 344
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xc

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 345
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xd

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 346
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 348
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 350
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 351
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 353
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 356
    :cond_1a
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x3a

    move/from16 v0, v17

    if-eq v10, v0, :cond_1b

    .line 357
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 359
    :cond_1b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x3a

    move/from16 v0, v17

    if-eq v10, v0, :cond_1c

    .line 360
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 363
    :cond_1c
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 364
    .restart local v11    # "h0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 365
    .restart local v12    # "h1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 366
    .restart local v13    # "m0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 367
    .restart local v14    # "m1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 368
    .restart local v15    # "s0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .restart local v16    # "s1":C
    move-object/from16 v10, p0

    .line 370
    invoke-direct/range {v10 .. v16}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 371
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 374
    :cond_1d
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v11

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v12

    add-int v39, v10, v17

    .line 375
    .restart local v39    # "hour":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v13

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v14

    add-int v44, v10, v17

    .line 376
    .restart local v44    # "minute":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v15

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v16

    add-int v49, v10, v17

    .line 377
    .restart local v49    # "seconds":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 378
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xc

    move/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 379
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xd

    move/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 381
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v38

    .line 382
    .local v38, "dot":C
    const/16 v10, 0x2e

    move/from16 v0, v38

    if-ne v0, v10, :cond_1e

    .line 383
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    move/from16 v0, v48

    if-ge v0, v10, :cond_1f

    .line 384
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 387
    :cond_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 389
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x13

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 391
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 392
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 395
    :cond_1f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v26

    .line 396
    .restart local v26    # "S0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v27

    .line 397
    .restart local v27    # "S1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 398
    .restart local v28    # "S2":C
    const/16 v10, 0x30

    move/from16 v0, v26

    if-lt v0, v10, :cond_20

    const/16 v10, 0x39

    move/from16 v0, v26

    if-le v0, v10, :cond_21

    .line 399
    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 401
    :cond_21
    const/16 v10, 0x30

    move/from16 v0, v27

    if-lt v0, v10, :cond_22

    const/16 v10, 0x39

    move/from16 v0, v27

    if-le v0, v10, :cond_23

    .line 402
    :cond_22
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 404
    :cond_23
    const/16 v10, 0x30

    move/from16 v0, v28

    if-lt v0, v10, :cond_24

    const/16 v10, 0x39

    move/from16 v0, v28

    if-le v0, v10, :cond_25

    .line 405
    :cond_24
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 408
    :cond_25
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v26

    mul-int/lit8 v10, v10, 0x64

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v27

    mul-int/lit8 v17, v17, 0xa

    add-int v10, v10, v17

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v28

    add-int v42, v10, v17

    .line 409
    .restart local v42    # "millis":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    move/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 411
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x17

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 413
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 414
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 10
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x2c

    const/16 v7, 0x10

    const/4 v3, -0x1

    .line 81
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 83
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 84
    const/4 v3, -0x2

    .line 127
    :cond_0
    :goto_0
    return v3

    .line 87
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    array-length v5, v5

    add-int v0, v4, v5

    .line 89
    .local v0, "bpLocal":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 90
    .local v2, "typeLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    :cond_2
    add-int/2addr v0, v2

    .line 96
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 102
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v4, v8, :cond_3

    .line 103
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 104
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 105
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 106
    const/4 v3, 0x3

    goto :goto_0

    .line 107
    :cond_3
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v4, v9, :cond_4

    .line 108
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 109
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v4, v8, :cond_5

    .line 110
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 111
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 123
    :goto_2
    const/4 v3, 0x4

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 126
    :cond_4
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 127
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 112
    :cond_5
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_6

    .line 113
    const/16 v3, 0xf

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 114
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 115
    :cond_6
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v4, v9, :cond_7

    .line 116
    const/16 v3, 0xd

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 117
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 118
    :cond_7
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_0

    .line 119
    const/16 v3, 0x14

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
