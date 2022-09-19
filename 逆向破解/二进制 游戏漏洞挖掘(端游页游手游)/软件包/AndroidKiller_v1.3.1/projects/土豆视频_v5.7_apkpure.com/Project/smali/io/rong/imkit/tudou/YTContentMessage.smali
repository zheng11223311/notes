.class public Lio/rong/imkit/tudou/YTContentMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "YTContentMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x3
    value = "YT:ImgTextMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imkit/tudou/YTContentMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoItemIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lio/rong/imkit/tudou/YTContentMessage$1;

    invoke-direct {v0}, Lio/rong/imkit/tudou/YTContentMessage$1;-><init>()V

    sput-object v0, Lio/rong/imkit/tudou/YTContentMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    .line 146
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->title:Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->content:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->imgUrl:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    .line 138
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/imkit/tudou/YTContentMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_1
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->title:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lio/rong/imkit/tudou/YTContentMessage;->content:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lio/rong/imkit/tudou/YTContentMessage;->imgUrl:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 93
    :cond_1
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->title:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lio/rong/imkit/tudou/YTContentMessage;->content:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lio/rong/imkit/tudou/YTContentMessage;->imgUrl:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "videoId"    # Ljava/lang/String;
    .param p5, "duration"    # Ljava/lang/String;
    .param p6, "videoItemIndex"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->title:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lio/rong/imkit/tudou/YTContentMessage;->content:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lio/rong/imkit/tudou/YTContentMessage;->imgUrl:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 153
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 26
    const-string v3, ""

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    .line 27
    const-string v3, ""

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    .line 28
    const-string v3, ""

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    .line 29
    const-string v3, ""

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    .line 30
    const-string v3, ""

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    .line 155
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 159
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->title:Ljava/lang/String;

    .line 161
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->content:Ljava/lang/String;

    .line 162
    const-string v3, "imageUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->imgUrl:Ljava/lang/String;

    .line 163
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    .line 164
    const-string v3, "extra"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    .line 165
    const-string/jumbo v3, "videoId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    .line 166
    const-string v3, "duration"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    .line 167
    const-string/jumbo v3, "videoItemIndex"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    .line 169
    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imkit/tudou/YTContentMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/imkit/tudou/YTContentMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string v3, "\\[/u([0-9A-Fa-f]+)\\]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 266
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 268
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/rong/imkit/tudou/YTContentMessage;->toExpressionChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/tudou/YTContentMessage;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lio/rong/imkit/tudou/YTContentMessage;

    invoke-direct {v0, p0, p1, p2}, Lio/rong/imkit/tudou/YTContentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/tudou/YTContentMessage;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Lio/rong/imkit/tudou/YTContentMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/rong/imkit/tudou/YTContentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private toExpressionChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "expChar"    # Ljava/lang/String;

    .prologue
    .line 280
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, "inthex":I
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 186
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "title"

    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/rong/imkit/tudou/YTContentMessage;->getExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v2, "content"

    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/rong/imkit/tudou/YTContentMessage;->getExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v2, "imageUri"

    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string/jumbo v2, "url"

    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string/jumbo v2, "videoId"

    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v2, "duration"

    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getDuration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo v2, "videoItemIndex"

    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getVideoItemIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    const-string/jumbo v2, "user"

    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 213
    :goto_1
    return-object v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 213
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoItemIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->content:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->imgUrl:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->title:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setVideoItemIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoItemIndex"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->content:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->imgUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->extra:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->duration:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lio/rong/imkit/tudou/YTContentMessage;->videoItemIndex:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lio/rong/imkit/tudou/YTContentMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 244
    return-void
.end method
