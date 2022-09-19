.class public Lcom/corncop/virgo/VirgoString;
.super Ljava/lang/Object;
.source "VirgoString.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lengthZH(Ljava/lang/String;)F
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 9
    if-eqz p0, :cond_0

    const-string v5, ""

    if-ne p0, v5, :cond_2

    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 26
    :cond_1
    return v3

    .line 12
    :cond_2
    const/4 v2, 0x0

    .line 13
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "len":F
    const/4 v4, 0x0

    .line 15
    .local v4, "tlen":F
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 16
    .local v1, "chars":[C
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 17
    aget-char v0, v1, v2

    .line 18
    .local v0, "ch":C
    const/16 v5, 0xff

    if-le v0, v5, :cond_5

    .line 19
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const v4, 0x3f028f5c    # 0.51f

    .line 23
    :goto_1
    add-float/2addr v3, v4

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    .line 21
    :cond_5
    const v4, 0x3f028f5c    # 0.51f

    goto :goto_1
.end method
