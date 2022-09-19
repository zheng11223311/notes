.class public final Lcom/corncop/capricornus/zip/extra/ZipLong;
.super Ljava/lang/Object;
.source "ZipLong.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BYTE_1:I = 0x1

.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8

.field private static final BYTE_2:I = 0x2

.field private static final BYTE_2_MASK:I = 0xff0000

.field private static final BYTE_2_SHIFT:I = 0x10

.field private static final BYTE_3:I = 0x3

.field private static final BYTE_3_MASK:J = 0xff000000L

.field private static final BYTE_3_SHIFT:I = 0x18

.field public static final CFH_SIG:Lcom/corncop/capricornus/zip/extra/ZipLong;

.field public static final DD_SIG:Lcom/corncop/capricornus/zip/extra/ZipLong;

.field public static final LFH_SIG:Lcom/corncop/capricornus/zip/extra/ZipLong;

.field static final ZIP64_MAGIC:Lcom/corncop/capricornus/zip/extra/ZipLong;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/corncop/capricornus/zip/extra/ZipLong;

    const-wide/32 v2, 0x2014b50    # 1.6619997E-316

    invoke-direct {v0, v2, v3}, Lcom/corncop/capricornus/zip/extra/ZipLong;-><init>(J)V

    sput-object v0, Lcom/corncop/capricornus/zip/extra/ZipLong;->CFH_SIG:Lcom/corncop/capricornus/zip/extra/ZipLong;

    .line 55
    new-instance v0, Lcom/corncop/capricornus/zip/extra/ZipLong;

    const-wide/32 v2, 0x4034b50

    invoke-direct {v0, v2, v3}, Lcom/corncop/capricornus/zip/extra/ZipLong;-><init>(J)V

    sput-object v0, Lcom/corncop/capricornus/zip/extra/ZipLong;->LFH_SIG:Lcom/corncop/capricornus/zip/extra/ZipLong;

    .line 60
    new-instance v0, Lcom/corncop/capricornus/zip/extra/ZipLong;

    const-wide/32 v2, 0x8074b50

    invoke-direct {v0, v2, v3}, Lcom/corncop/capricornus/zip/extra/ZipLong;-><init>(J)V

    sput-object v0, Lcom/corncop/capricornus/zip/extra/ZipLong;->DD_SIG:Lcom/corncop/capricornus/zip/extra/ZipLong;

    .line 66
    new-instance v0, Lcom/corncop/capricornus/zip/extra/ZipLong;

    const-wide v2, 0xffffffffL

    invoke-direct {v0, v2, v3}, Lcom/corncop/capricornus/zip/extra/ZipLong;-><init>(J)V

    sput-object v0, Lcom/corncop/capricornus/zip/extra/ZipLong;->ZIP64_MAGIC:Lcom/corncop/capricornus/zip/extra/ZipLong;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-wide p1, p0, Lcom/corncop/capricornus/zip/extra/ZipLong;->value:J

    .line 76
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/corncop/capricornus/zip/extra/ZipLong;-><init>([BI)V

    .line 86
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1, p2}, Lcom/corncop/capricornus/zip/extra/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/corncop/capricornus/zip/extra/ZipLong;->value:J

    .line 97
    return-void
.end method

.method public static getBytes(J)[B
    .locals 6
    .param p0, "value"    # J

    .prologue
    .line 126
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 127
    .local v0, "result":[B
    const/4 v1, 0x0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 128
    const/4 v1, 0x1

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p0

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    const/4 v1, 0x2

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 130
    const/4 v1, 0x3

    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 131
    return-object v0
.end method

.method public static getValue([B)J
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/corncop/capricornus/zip/extra/ZipLong;->getValue([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getValue([BI)J
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 142
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide v4, 0xff000000L

    and-long v0, v2, v4

    .line 143
    .local v0, "value":J
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 144
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 145
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 146
    return-wide v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 188
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, "cnfe":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 168
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/corncop/capricornus/zip/extra/ZipLong;

    if-nez v1, :cond_1

    .line 171
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-wide v2, p0, Lcom/corncop/capricornus/zip/extra/ZipLong;->value:J

    check-cast p1, Lcom/corncop/capricornus/zip/extra/ZipLong;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/corncop/capricornus/zip/extra/ZipLong;->getValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/corncop/capricornus/zip/extra/ZipLong;->value:J

    invoke-static {v0, v1}, Lcom/corncop/capricornus/zip/extra/ZipLong;->getBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/corncop/capricornus/zip/extra/ZipLong;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/corncop/capricornus/zip/extra/ZipLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipLong value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/corncop/capricornus/zip/extra/ZipLong;->value:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
