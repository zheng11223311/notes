.class public Lcom/alibaba/cpush/codec/support/Base62;
.super Ljava/lang/Object;


# static fields
.field private static final BASE:I

.field private static final FAST_SIZE:I = 0x7a

.field private static final baseDigits:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final digitsChar:[C

.field private static final digitsIndex:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x3e

    sput v1, Lcom/alibaba/cpush/codec/support/Base62;->BASE:I

    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/alibaba/cpush/codec/support/Base62;->digitsChar:[C

    const/16 v1, 0x7b

    new-array v1, v1, [I

    sput-object v1, Lcom/alibaba/cpush/codec/support/Base62;->digitsIndex:[I

    move v1, v0

    :goto_0
    const/16 v2, 0x7a

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/alibaba/cpush/codec/support/Base62;->digitsIndex:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget v1, Lcom/alibaba/cpush/codec/support/Base62;->BASE:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/alibaba/cpush/codec/support/Base62;->digitsIndex:[I

    sget-object v2, Lcom/alibaba/cpush/codec/support/Base62;->digitsChar:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)J
    .locals 8

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-static {p0, v0}, Lcom/alibaba/cpush/codec/support/Base62;->getIndex(Ljava/lang/String;I)I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    sget v1, Lcom/alibaba/cpush/codec/support/Base62;->BASE:I

    int-to-long v6, v1

    mul-long/2addr v2, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v4
.end method

.method public static encode(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number(Base62) must be positive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p0, v4

    if-nez v0, :cond_1

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    cmp-long v1, p0, v4

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/cpush/codec/support/Base62;->digitsChar:[C

    sget v2, Lcom/alibaba/cpush/codec/support/Base62;->BASE:I

    int-to-long v2, v2

    rem-long v2, p0, v2

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v1, Lcom/alibaba/cpush/codec/support/Base62;->BASE:I

    int-to-long v2, v1

    div-long/2addr p0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getIndex(Ljava/lang/String;I)I
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown character for Base62: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/alibaba/cpush/codec/support/Base62;->digitsIndex:[I

    aget v0, v1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown character for Base62: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method
