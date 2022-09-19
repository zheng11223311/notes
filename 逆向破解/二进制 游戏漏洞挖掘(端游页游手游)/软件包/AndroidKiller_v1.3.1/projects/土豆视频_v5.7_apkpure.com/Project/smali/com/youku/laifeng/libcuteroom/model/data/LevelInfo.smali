.class public Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;
.super Ljava/lang/Object;
.source "LevelInfo.java"


# static fields
.field public static final TYPE_ANCHOR:I = 0x1

.field public static final TYPE_USER:I = 0x2


# instance fields
.field private mDownloadUrl:Ljava/lang/String;

.field private mSign:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->mType:I

    .line 10
    const-string v0, "default"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->mSign:Ljava/lang/String;

    .line 11
    const-string v0, "http://127.0.0.1"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->mDownloadUrl:Ljava/lang/String;

    .line 14
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->mType:I

    .line 15
    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->mSign:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->mType:I

    return v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->mDownloadUrl:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->mSign:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->mType:I

    .line 39
    return-void
.end method
