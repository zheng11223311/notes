.class public Lcom/tudou/detail/vo/CommentsInfo;
.super Ljava/lang/Object;
.source "CommentsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/CommentsInfo$Comment;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4675d89cac375cf5L


# instance fields
.field public forbidden:Z

.field public mComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/CommentsInfo$Comment;",
            ">;"
        }
    .end annotation
.end field

.field public mItemCode:Ljava/lang/String;

.field public pg:I

.field public pz:I

.field public tm:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/tudou/detail/vo/CommentsInfo;
    .locals 9
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v6, Lcom/tudou/detail/vo/CommentsInfo;

    invoke-direct {v6}, Lcom/tudou/detail/vo/CommentsInfo;-><init>()V

    .line 127
    .local v6, "ret":Lcom/tudou/detail/vo/CommentsInfo;
    :try_start_0
    const-string v7, "itemCode"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/tudou/detail/vo/CommentsInfo;->mItemCode:Ljava/lang/String;

    .line 128
    const-string v7, "pz"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/tudou/detail/vo/CommentsInfo;->pz:I

    .line 129
    const-string v7, "pg"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/tudou/detail/vo/CommentsInfo;->pg:I

    .line 130
    const-string v7, "tm"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/tudou/detail/vo/CommentsInfo;->tm:I

    .line 131
    const-string v7, "forbidden"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/tudou/detail/vo/CommentsInfo;->forbidden:Z

    .line 132
    const-string v7, "total"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    .line 134
    const-string v7, "popularityList"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 136
    .local v5, "popularList":Lorg/json/JSONObject;
    const-string v7, "data"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 137
    .local v1, "datas":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 138
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    .line 139
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 140
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/tudou/detail/vo/CommentsInfo$Comment;->createFromJson(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/CommentsInfo$Comment;

    move-result-object v0

    .line 141
    .local v0, "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    if-eqz v0, :cond_1

    .line 142
    iput-object p2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->type:Ljava/lang/String;

    .line 143
    iput-object p1, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->vid:Ljava/lang/String;

    .line 144
    if-eqz v5, :cond_0

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->commentId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 146
    .local v4, "jb":Lorg/json/JSONObject;
    const-string v7, "reply"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->reply:I

    .line 147
    const-string v7, "weighing"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->weighing:I

    .line 148
    const-string v7, "agree"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->agree:I

    .line 149
    const-string v7, "disagree"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->disagree:I

    .line 151
    .end local v4    # "jb":Lorg/json/JSONObject;
    :cond_0
    iget-object v7, v6, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    .end local v1    # "datas":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v5    # "popularList":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8, v2}, Lcom/youku/laifeng/sdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v6
.end method


# virtual methods
.method public get(I)Lcom/tudou/detail/vo/CommentsInfo$Comment;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reSizeComment(I)Lcom/tudou/detail/vo/CommentsInfo;
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 112
    :goto_0
    return-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/CommentsInfo$Comment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 109
    iget-object v2, p0, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    :cond_1
    iput-object v0, p0, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    goto :goto_0
.end method
