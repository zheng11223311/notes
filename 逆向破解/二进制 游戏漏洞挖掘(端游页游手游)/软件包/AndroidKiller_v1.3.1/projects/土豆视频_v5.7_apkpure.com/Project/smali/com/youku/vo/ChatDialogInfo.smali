.class public Lcom/youku/vo/ChatDialogInfo;
.super Ljava/lang/Object;
.source "ChatDialogInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INVEITE_TEXT:Ljava/lang/String; = "\u9080\u8bf7\u4f60\u8fb9\u770b\u8fb9\u804a"

.field private static final REGEX_CHAT:Ljava/lang/String; = "^.*\u3010\u571f\u8c46\u89c6\u9891\u3011.*\u300c.*\u300d.*\u300c[A-Za-z0-9]{8}\u300d.*$"


# instance fields
.field private final BODY_FIRST_TEXT:Ljava/lang/String;

.field private final BODY_LAST_CHANGE_CHAT_TEXT:Ljava/lang/String;

.field private final BODY_LAST_TEXT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field public point:I

.field public roomId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "\u4f60\u7684\u670b\u53cb\u6b63\u5728\u770b"

    iput-object v0, p0, Lcom/youku/vo/ChatDialogInfo;->BODY_FIRST_TEXT:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "\uff0c\u9080\u8bf7\u4f60\u8fb9\u770b\u8fb9\u804a\uff0c\u662f\u5426\u52a0\u5165\uff1f"

    iput-object v0, p0, Lcom/youku/vo/ChatDialogInfo;->BODY_LAST_TEXT:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "\uff0c\u9080\u8bf7\u4f60\u8fb9\u770b\u8fb9\u804a\uff0c\u662f\u5426\u9000\u51fa\u5f53\u524d\u623f\u95f4\u8fdb\u5165\u65b0\u7684\u623f\u95f4\uff1f"

    iput-object v0, p0, Lcom/youku/vo/ChatDialogInfo;->BODY_LAST_CHANGE_CHAT_TEXT:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/ChatDialogInfo;->point:I

    .line 32
    const-string v0, "ChatDialogInfo"

    iput-object v0, p0, Lcom/youku/vo/ChatDialogInfo;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static formatChatData(Ljava/lang/String;)Lcom/youku/vo/ChatDialogInfo;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v1, v10

    .line 76
    :goto_0
    return-object v1

    .line 55
    :cond_0
    :try_start_0
    new-instance v1, Lcom/youku/vo/ChatDialogInfo;

    invoke-direct {v1}, Lcom/youku/vo/ChatDialogInfo;-><init>()V

    .line 56
    .local v1, "info":Lcom/youku/vo/ChatDialogInfo;
    const/16 v11, 0x300c

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 57
    .local v8, "videoIdStartIndex":I
    const/16 v11, 0x300d

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 59
    .local v7, "videoIdEndIndex":I
    const/16 v11, 0x300c

    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 60
    .local v4, "roomIdStartIndex":I
    const/16 v11, 0x300d

    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 62
    .local v3, "roomIdEndIndex":I
    const/16 v11, 0x3002

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 64
    .local v5, "titleStartIndex":I
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "videoId":Ljava/lang/String;
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p0, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "roomId":Ljava/lang/String;
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "videoName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 69
    iput-object v2, v1, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    .line 70
    iput-object v6, v1, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    .line 71
    iput-object v9, v1, Lcom/youku/vo/ChatDialogInfo;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v1    # "info":Lcom/youku/vo/ChatDialogInfo;
    .end local v2    # "roomId":Ljava/lang/String;
    .end local v3    # "roomIdEndIndex":I
    .end local v4    # "roomIdStartIndex":I
    .end local v5    # "titleStartIndex":I
    .end local v6    # "videoId":Ljava/lang/String;
    .end local v7    # "videoIdEndIndex":I
    .end local v8    # "videoIdStartIndex":I
    .end local v9    # "videoName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v10

    .line 76
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Lcom/youku/vo/ChatDialogInfo;
    .restart local v2    # "roomId":Ljava/lang/String;
    .restart local v3    # "roomIdEndIndex":I
    .restart local v4    # "roomIdStartIndex":I
    .restart local v5    # "titleStartIndex":I
    .restart local v6    # "videoId":Ljava/lang/String;
    .restart local v7    # "videoIdEndIndex":I
    .restart local v8    # "videoIdStartIndex":I
    .restart local v9    # "videoName":Ljava/lang/String;
    :cond_1
    move-object v1, v10

    .line 74
    goto :goto_0
.end method

.method public static matchRegex(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    const-string v0, "^.*\u3010\u571f\u8c46\u89c6\u9891\u3011.*\u300c.*\u300d.*\u300c[A-Za-z0-9]{8}\u300d.*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 109
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/youku/vo/ChatDialogInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 110
    check-cast v0, Lcom/youku/vo/ChatDialogInfo;

    .line 111
    .local v0, "dialogInfo":Lcom/youku/vo/ChatDialogInfo;
    iget-object v2, p0, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    iget-object v3, v0, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    iget-object v3, v0, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 114
    .end local v0    # "dialogInfo":Lcom/youku/vo/ChatDialogInfo;
    :cond_0
    return v1
.end method

.method public getInviteDialogTitle(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isChangeChat"    # Z

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4f60\u7684\u670b\u53cb\u6b63\u5728\u770b\u3010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChatDialogInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3011

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "\uff0c\u9080\u8bf7\u4f60\u8fb9\u770b\u8fb9\u804a\uff0c\u662f\u5426\u9000\u51fa\u5f53\u524d\u623f\u95f4\u8fdb\u5165\u65b0\u7684\u623f\u95f4\uff1f"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "\uff0c\u9080\u8bf7\u4f60\u8fb9\u770b\u8fb9\u804a\uff0c\u662f\u5426\u52a0\u5165\uff1f"

    goto :goto_0
.end method

.method public getSysoendInvideDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4f60\u7684\u670b\u53cb\u6b63\u5728\u770b\u3010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChatDialogInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3011

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goDetailActivity(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "intent.extra.open.chat"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    const-string v2, "intent.extra.chat.roomid"

    iget-object v3, p0, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/youku/vo/ChatDialogInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "video_id"

    iget-object v3, p0, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "point"

    iget v3, p0, Lcom/youku/vo/ChatDialogInfo;->point:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v1, "intent.extra.from.chat"

    .line 102
    .local v1, "from":Ljava/lang/String;
    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    invoke-static {p1, v2, v0}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V

    .line 104
    const-string v2, "ChatDialogInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goDetailActivity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/youku/vo/ChatDialogInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public goDetailActivity(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isClearClipData"    # Z

    .prologue
    .line 81
    if-eqz p1, :cond_1

    .line 82
    if-eqz p2, :cond_0

    .line 84
    :try_start_0
    invoke-static {p1}, Lcom/youku/util/Util;->clearClipData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/youku/vo/ChatDialogInfo;->goDetailActivity(Landroid/content/Context;)V

    .line 89
    :cond_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatDialogInfo{videoId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roomId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/ChatDialogInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
