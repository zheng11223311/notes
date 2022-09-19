.class public Lcom/tudou/detail/vo/CommentsInfo$Comment;
.super Ljava/lang/Object;
.source "CommentsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/CommentsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comment"
.end annotation


# static fields
.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_QQ:I = 0x3

.field public static final STATUS_QQWEIBO:I = 0x2

.field public static final STATUS_SINA:I = 0x1

.field public static final TYPE_HOT:Ljava/lang/String; = "hot"

.field public static final TYPE_NEW:Ljava/lang/String; = "new"

.field private static final serialVersionUID:J = 0x12afe5094ee5ff73L


# instance fields
.field public agree:I

.field public commentId:I

.field public content:Ljava/lang/String;

.field public disagree:I

.field public headLink:Ljava/lang/String;

.field public isVUser:Z

.field public isVip:Z

.field public itemId:I

.field public location:Ljava/lang/String;

.field public mDiged:Z

.field public mark:I

.field public motherId:I

.field public nickName:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public publishTime:J

.field public reply:I

.field public status:I

.field public time:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public ucode:Ljava/lang/String;

.field public userId:I

.field public userName:Ljava/lang/String;

.field public userPic:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public weighing:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/CommentsInfo$Comment;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "ret":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    if-eqz p0, :cond_0

    .line 75
    new-instance v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    .end local v1    # "ret":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    invoke-direct {v1}, Lcom/tudou/detail/vo/CommentsInfo$Comment;-><init>()V

    .line 77
    .restart local v1    # "ret":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    :try_start_0
    const-string v2, "status"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->status:I

    .line 78
    const-string v2, "itemId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->itemId:I

    .line 79
    const-string v2, "motherId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->motherId:I

    .line 80
    const-string v2, "publish_time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->publishTime:J

    .line 81
    const-string v2, "userpic"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userPic:Ljava/lang/String;

    .line 82
    const-string v2, "headlink"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->headLink:Ljava/lang/String;

    .line 83
    const-string v2, "isvip"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->isVip:Z

    .line 84
    const-string v2, "username"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userName:Ljava/lang/String;

    .line 85
    const-string v2, "userID"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userId:I

    .line 86
    const-string v2, "mark"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->mark:I

    .line 87
    const-string v2, "content"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->content:Ljava/lang/String;

    .line 88
    const-string v2, "picUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->picUrl:Ljava/lang/String;

    .line 89
    const-string v2, "time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->time:Ljava/lang/String;

    .line 90
    const-string v2, "isVuser"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->isVUser:Z

    .line 91
    const-string v2, "commentId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->commentId:I

    .line 92
    const-string v2, "ucode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->ucode:Ljava/lang/String;

    .line 93
    const-string v2, "nickname"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->nickName:Ljava/lang/String;

    .line 94
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/detail/vo/CommentsInfo$Comment;->location:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/youku/laifeng/sdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
