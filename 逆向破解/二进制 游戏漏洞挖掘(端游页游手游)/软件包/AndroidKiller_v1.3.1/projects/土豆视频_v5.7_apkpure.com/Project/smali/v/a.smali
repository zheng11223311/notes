.class public Lv/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field a:I

.field b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lv/a;->a:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lv/a;->a(Lorg/xml/sax/Attributes;)V

    .line 84
    return-void
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 561
    if-gtz p1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 566
    :cond_2
    const/16 v0, 0x19

    .line 572
    :goto_1
    mul-int/lit8 v1, p1, 0x5

    if-ge v0, v1, :cond_4

    .line 573
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 567
    :cond_3
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v1, p1, 0x5

    if-ge v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 576
    :cond_4
    new-array v0, v0, [Ljava/lang/String;

    .line 577
    iget v1, p0, Lv/a;->a:I

    if-lez v1, :cond_5

    .line 578
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    iget v2, p0, Lv/a;->a:I

    mul-int/lit8 v2, v2, 0x5

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 580
    :cond_5
    iput-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    goto :goto_0
.end method

.method private c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to modify attribute at illegal index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 321
    :goto_0
    iget v2, p0, Lv/a;->a:I

    mul-int/lit8 v2, v2, 0x5

    if-ge v0, v2, :cond_0

    .line 322
    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iput v1, p0, Lv/a;->a:I

    .line 325
    return-void
.end method

.method public a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 437
    if-ltz p1, :cond_1

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_1

    .line 438
    iget v0, p0, Lv/a;->a:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 439
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v3, p1, 0x5

    iget v4, p0, Lv/a;->a:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    :cond_0
    iget v0, p0, Lv/a;->a:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x5

    .line 443
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aput-object v5, v1, v0

    .line 444
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aput-object v5, v0, v2

    .line 445
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v5, v0, v1

    .line 446
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aput-object v5, v0, v2

    .line 447
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    aput-object v5, v0, v1

    .line 448
    iget v0, p0, Lv/a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lv/a;->a:I

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-direct {p0, p1}, Lv/a;->c(I)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 466
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 467
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-direct {p0, p1}, Lv/a;->c(I)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 416
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 417
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    .line 418
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p3, v0, v1

    .line 419
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p4, v0, v1

    .line 420
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p5, v0, v1

    .line 421
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p6, v0, v1

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lv/a;->c(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 378
    iget v0, p0, Lv/a;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lv/a;->b(I)V

    .line 379
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    iget v1, p0, Lv/a;->a:I

    mul-int/lit8 v1, v1, 0x5

    aput-object p1, v0, v1

    .line 380
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    iget v1, p0, Lv/a;->a:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 381
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    iget v1, p0, Lv/a;->a:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 382
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    iget v1, p0, Lv/a;->a:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p4, v0, v1

    .line 383
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    iget v1, p0, Lv/a;->a:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p5, v0, v1

    .line 384
    iget v0, p0, Lv/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv/a;->a:I

    .line 385
    return-void
.end method

.method public a(Lorg/xml/sax/Attributes;)V
    .locals 4

    .prologue
    .line 339
    invoke-virtual {p0}, Lv/a;->a()V

    .line 340
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    iput v0, p0, Lv/a;->a:I

    .line 341
    iget v0, p0, Lv/a;->a:I

    if-lez v0, :cond_0

    .line 342
    iget v0, p0, Lv/a;->a:I

    mul-int/lit8 v0, v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lv/a;->a:I

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 345
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 346
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 347
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 348
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 485
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 486
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-direct {p0, p1}, Lv/a;->c(I)V

    goto :goto_0
.end method

.method public c(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 504
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 505
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p2, v0, v1

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-direct {p0, p1}, Lv/a;->c(I)V

    goto :goto_0
.end method

.method public d(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 523
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 524
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p2, v0, v1

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    invoke-direct {p0, p1}, Lv/a;->c(I)V

    goto :goto_0
.end method

.method public e(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 542
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 543
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p2, v0, v1

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    invoke-direct {p0, p1}, Lv/a;->c(I)V

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 220
    iget v0, p0, Lv/a;->a:I

    mul-int/lit8 v1, v0, 0x5

    .line 221
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 222
    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    div-int/lit8 v0, v0, 0x5

    .line 226
    :goto_1
    return v0

    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 202
    iget v0, p0, Lv/a;->a:I

    mul-int/lit8 v1, v0, 0x5

    .line 203
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 204
    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    div-int/lit8 v0, v0, 0x5

    .line 208
    :goto_1
    return v0

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lv/a;->a:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 259
    iget v0, p0, Lv/a;->a:I

    mul-int/lit8 v1, v0, 0x5

    .line 260
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 261
    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    aget-object v0, v1, v0

    .line 265
    :goto_1
    return-object v0

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 265
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    iget v0, p0, Lv/a;->a:I

    mul-int/lit8 v1, v0, 0x5

    .line 242
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 243
    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    aget-object v0, v1, v0

    .line 247
    :goto_1
    return-object v0

    .line 242
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aget-object v0, v0, v1

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    if-ltz p1, :cond_0

    iget v0, p0, Lv/a;->a:I

    if-ge p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lv/a;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    iget v0, p0, Lv/a;->a:I

    mul-int/lit8 v1, v0, 0x5

    .line 299
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 300
    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x4

    aget-object v0, v1, v0

    .line 304
    :goto_1
    return-object v0

    .line 299
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 280
    iget v0, p0, Lv/a;->a:I

    mul-int/lit8 v1, v0, 0x5

    .line 281
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 282
    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v1, p0, Lv/a;->b:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x4

    aget-object v0, v1, v0

    .line 286
    :goto_1
    return-object v0

    .line 281
    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
