.class public Lcom/youku/gamecenter/download/DownloadInfo$Builder;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mClickState:I

.field public mCurrentLength:J

.field public mDownloadDuration:I

.field public mDownloadTitle:Ljava/lang/String;

.field public mDownloadUrl:Ljava/lang/String;

.field public mDownloadVelocity:I

.field public mDownloadWay:I

.field public mEndTrack:Ljava/lang/String;

.field public mIcon:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field public mLastModified:Ljava/lang/String;

.field public mMd5:Ljava/lang/String;

.field public mNotificationID:I

.field public mPackageName:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mProgress:I

.field public mSize:J

.field public mSource:Ljava/lang/String;

.field public mStartTrack:Ljava/lang/String;

.field public mState:I

.field public mStatistic:Ljava/lang/String;

.field public mType:I

.field public mVersion:I

.field public mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/youku/gamecenter/download/DownloadInfo;
    .locals 28

    .prologue
    .line 308
    new-instance v2, Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mDownloadTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mProgress:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mVersion:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mIcon:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mDownloadDuration:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mStatistic:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mSize:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mMd5:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mVersionName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mLastModified:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mDownloadWay:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mClickState:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mNotificationID:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mDownloadVelocity:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mStartTrack:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mEndTrack:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mCurrentLength:J

    move-wide/from16 v26, v0

    invoke-direct/range {v2 .. v27}, Lcom/youku/gamecenter/download/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public setCurrentLength(J)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 1
    .param p1, "currentLength"    # J

    .prologue
    .line 303
    iput-wide p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mCurrentLength:J

    .line 304
    return-object p0
.end method

.method public setDownloadDuration(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mDownloadDuration:I

    .line 272
    return-object p0
.end method

.method public setDownloadWay(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "downloadWay"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mDownloadWay:I

    .line 252
    return-object p0
.end method

.method public setEndTrack([Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 1
    .param p1, "endTrack"    # [Ljava/lang/String;

    .prologue
    .line 297
    if-eqz p1, :cond_0

    .line 298
    const-string v0, "array+_#_+divider"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mEndTrack:Ljava/lang/String;

    .line 299
    :cond_0
    return-object p0
.end method

.method public setIcon(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mIcon:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mId:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public setLastModified(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "lastModified"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mLastModified:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public setMd5(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mMd5:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public setNotificationID(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "notificationID"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mNotificationID:I

    .line 287
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setPause(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "clickState"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mClickState:I

    .line 282
    return-object p0
.end method

.method public setProgress(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 261
    iput p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mProgress:I

    .line 262
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mSource:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public setStartTrack([Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 1
    .param p1, "startTrack"    # [Ljava/lang/String;

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 292
    const-string v0, "array+_#_+divider"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mStartTrack:Ljava/lang/String;

    .line 293
    :cond_0
    return-object p0
.end method

.method public setStatistic(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "statistic"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mStatistic:Ljava/lang/String;

    .line 277
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "downloadTitle"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mDownloadTitle:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public setType(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mType:I

    .line 242
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mDownloadUrl:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public setVersion(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mVersion:I

    .line 227
    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->mVersionName:Ljava/lang/String;

    .line 257
    return-object p0
.end method
