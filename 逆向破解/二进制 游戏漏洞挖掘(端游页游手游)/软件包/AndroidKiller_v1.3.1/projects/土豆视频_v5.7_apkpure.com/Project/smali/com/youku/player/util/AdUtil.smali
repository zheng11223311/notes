.class public Lcom/youku/player/util/AdUtil;
.super Ljava/lang/Object;
.source "AdUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvImageTypePosition(Lcom/youku/player/goplay/VideoAdvInfo;)I
    .locals 4
    .param p0, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 67
    if-eqz p0, :cond_2

    .line 68
    iget-object v2, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 69
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 70
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u5e7f\u544aVC:\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 73
    iget-object v2, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->AT:Ljava/lang/String;

    const-string v3, "76"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    .end local v0    # "i":I
    .end local v1    # "size":I
    :goto_1
    return v0

    .line 72
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isAdvImageTypeYouku(Lcom/youku/player/goplay/VideoAdvInfo;)Z
    .locals 4
    .param p0, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 50
    if-eqz p0, :cond_2

    .line 51
    iget-object v2, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 52
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 53
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u5e7f\u544aVC:\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 56
    iget-object v2, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->AT:Ljava/lang/String;

    const-string v3, "76"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/AdvInfo;

    iget v2, v2, Lcom/youku/player/goplay/AdvInfo;->SDKID:I

    if-nez v2, :cond_1

    .line 58
    const/4 v2, 0x1

    .line 63
    .end local v0    # "i":I
    .end local v1    # "size":I
    :goto_1
    return v2

    .line 55
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isAdvVideoType(Lcom/youku/player/goplay/VideoAdvInfo;)Z
    .locals 4
    .param p0, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 34
    if-eqz p0, :cond_2

    .line 35
    iget-object v2, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 36
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 37
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u5168\u5c4f\u5e7f\u544aVC:\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 40
    iget-object v2, p0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->AT:Ljava/lang/String;

    const-string v3, "76"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    const/4 v2, 0x0

    .line 46
    .end local v0    # "i":I
    .end local v1    # "size":I
    :goto_1
    return v2

    .line 39
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isDownloadAPK(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Z
    .locals 3
    .param p0, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p1, "clickUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 22
    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    const-string v1, "http://val.atm.youku.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    :cond_2
    if-eqz p0, :cond_3

    iget v1, p0, Lcom/youku/player/goplay/AdvInfo;->CUF:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 30
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTrueViewAd(Lcom/youku/player/goplay/AdvInfo;)Z
    .locals 1
    .param p0, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 83
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
