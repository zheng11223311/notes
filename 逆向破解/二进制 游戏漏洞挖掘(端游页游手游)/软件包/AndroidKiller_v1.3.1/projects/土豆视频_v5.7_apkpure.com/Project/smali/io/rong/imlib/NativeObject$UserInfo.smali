.class public Lio/rong/imlib/NativeObject$UserInfo;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# instance fields
.field private accountExtra:Ljava/lang/String;

.field private categoryId:I

.field private joinTime:J

.field private url:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->accountExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->categoryId:I

    return v0
.end method

.method public getJoinTime()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->joinTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lio/rong/imlib/NativeObject$UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountExtra"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->accountExtra:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "categoryId"    # I

    .prologue
    .line 285
    iput p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->categoryId:I

    .line 286
    return-void
.end method

.method public setJoinTime(J)V
    .locals 1
    .param p1, "joinTime"    # J

    .prologue
    .line 317
    iput-wide p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->joinTime:J

    .line 318
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->url:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->userId:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lio/rong/imlib/NativeObject$UserInfo;->userName:Ljava/lang/String;

    .line 294
    return-void
.end method
