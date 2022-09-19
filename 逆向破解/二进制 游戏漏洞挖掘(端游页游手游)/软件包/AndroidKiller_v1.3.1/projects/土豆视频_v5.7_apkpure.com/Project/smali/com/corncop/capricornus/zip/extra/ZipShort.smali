.class public final Lcom/corncop/capricornus/zip/extra/ZipShort;
.super Ljava/lang/Object;
.source "ZipShort.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/corncop/capricornus/zip/extra/ZipShort;->value:I

    .line 46
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/corncop/capricornus/zip/extra/ZipShort;-><init>([BI)V

    .line 56
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1, p2}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/ZipShort;->value:I

    .line 67
    return-void
.end method

.method public static getBytes(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 99
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 100
    .local v0, "result":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 101
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 102
    return-object v0
.end method

.method public static getValue([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getValue([BI)I

    move-result v0

    return v0
.end method

.method public static getValue([BI)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 113
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int v0, v1, v2

    .line 114
    .local v0, "value":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 115
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 157
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "cnfe":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 137
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/corncop/capricornus/zip/extra/ZipShort;

    if-nez v1, :cond_1

    .line 140
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget v1, p0, Lcom/corncop/capricornus/zip/extra/ZipShort;->value:I

    check-cast p1, Lcom/corncop/capricornus/zip/extra/ZipShort;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 4

    .prologue
    .line 76
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 77
    .local v0, "result":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/corncop/capricornus/zip/extra/ZipShort;->value:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 78
    const/4 v1, 0x1

    iget v2, p0, Lcom/corncop/capricornus/zip/extra/ZipShort;->value:I

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 79
    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/corncop/capricornus/zip/extra/ZipShort;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/corncop/capricornus/zip/extra/ZipShort;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipShort value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/corncop/capricornus/zip/extra/ZipShort;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
