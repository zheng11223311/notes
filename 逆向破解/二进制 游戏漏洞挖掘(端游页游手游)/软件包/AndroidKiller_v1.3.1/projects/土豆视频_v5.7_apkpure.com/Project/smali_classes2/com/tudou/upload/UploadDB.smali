.class public Lcom/tudou/upload/UploadDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UploadDB.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "paike.db"

.field private static final DB_VERSION:I = 0x1

.field private static db:Landroid/database/sqlite/SQLiteDatabase; = null

.field private static instance:Lcom/tudou/upload/UploadDB; = null

.field private static final sql_create_table_upload:Ljava/lang/String; = " CREATE TABLE IF NOT EXISTS upload ( taskid VARCHAR PRIMARY KEY,  title VARCHAR,  desc VARCHAR,  tag VARCHAR, category INTEGER, username VARCHAR, privacy INTEGER, push INTEGER, videopassword VARCHAR, longitude VARCHAR, latitude VARCHAR, filepath VARCHAR, filename VARCHAR,  filepostfix VARCHAR,  size INTEGER, fileid VARCHAR, sid INTEGER, targethost VARCHAR, targetipaddr VARCHAR, md5 VARCHAR, iscreated INTEGER, uploadedsize INTEGER, offset INTEGER, segmentsize INTEHER, status INTEHER, createtime INTEGER, starttime INTEGER, finishtime INTEGER, progress INTEGER, locationame VARCHAR,  locationaddress VARCHAR, breakedsliceids VARCHAR, duration INTEGER, url VARCHAR, inquireURL VARCHAR, isnewvideo INTEGER)"

.field private static final sql_get_count_wo_delete_n_cancel:Ljava/lang/String; = "select * from upload where username = ? and status != 6 and status != 4 order by createtime desc"

.field private static final sql_select_all:Ljava/lang/String; = "select * from upload where username = ? and status != 6 and status != 1 order by createtime desc"

.field private static final sql_select_all_contain_delete:Ljava/lang/String; = "select * from upload where username = ? order by createtime desc"

.field private static final sql_select_item:Ljava/lang/String; = "select * from upload where taskid = ?"

.field private static final sql_select_paused:Ljava/lang/String; = "select * from upload where status = 5 and status != 6 and username = ? order by createtime asc"

.field private static final sql_select_unfinished:Ljava/lang/String; = "select * from upload where status not in(5, 1, 4,6)  and username = ? order by createtime asc"

.field private static final sql_select_uploaded:Ljava/lang/String; = "select  * from upload where status = 1 and username = ? order by createtime desc limit 10"

.field private static final table_upload:Ljava/lang/String; = "upload"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 419
    const-string v0, "paike.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 420
    return-void
.end method

.method protected static closeDB()V
    .locals 1

    .prologue
    .line 438
    sget-object v0, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 440
    :cond_0
    return-void
.end method

.method private static cursor2UploadInfo(Landroid/database/Cursor;)Lcom/tudou/upload/UploadInfo;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 188
    new-instance v0, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v0}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 189
    .local v0, "info":Lcom/tudou/upload/UploadInfo;
    const-string v1, "taskid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTaskId(Ljava/lang/String;)V

    .line 190
    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTitle(Ljava/lang/String;)V

    .line 191
    const-string v1, "desc"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setDesc(Ljava/lang/String;)V

    .line 192
    const-string v1, "tag"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTag(Ljava/lang/String;)V

    .line 193
    const-string v1, "category"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setCategory(I)V

    .line 194
    const-string v1, "username"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setUserName(Ljava/lang/String;)V

    .line 195
    const-string v1, "privacy"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setPrivacy(I)V

    .line 196
    const-string v1, "push"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setPush(Z)V

    .line 197
    const-string v1, "videopassword"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setVideoPassword(Ljava/lang/String;)V

    .line 198
    const-string v1, "longitude"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setLongitude(Ljava/lang/String;)V

    .line 199
    const-string v1, "latitude"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setLatitude(Ljava/lang/String;)V

    .line 201
    const-string v1, "filepath"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setFilePath(Ljava/lang/String;)V

    .line 202
    const-string v1, "filename"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setFileName(Ljava/lang/String;)V

    .line 203
    const-string v1, "filepostfix"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setFilePostfix(Ljava/lang/String;)V

    .line 204
    const-string v1, "size"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tudou/upload/UploadInfo;->setSize(J)V

    .line 206
    const-string v1, "fileid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setUploadToken(Ljava/lang/String;)V

    .line 207
    const-string v1, "sid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setExceptionCode(I)V

    .line 208
    const-string v1, "targethost"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTargetHost(Ljava/lang/String;)V

    .line 209
    const-string v1, "targetipaddr"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTargetIpAddr(Ljava/lang/String;)V

    .line 210
    const-string v1, "md5"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setMd5(Ljava/lang/String;)V

    .line 211
    const-string v1, "iscreated"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setInstantUpload(Z)V

    .line 212
    const-string v1, "uploadedsize"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/tudou/upload/UploadInfo;->setUploadedSize(J)V

    .line 213
    const-string v1, "offset"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setCreatedFile(Z)V

    .line 214
    const-string v1, "segmentsize"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setSliceSize(I)V

    .line 216
    const-string v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 217
    const-string v1, "createtime"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tudou/upload/UploadInfo;->setCreateTime(J)V

    .line 218
    const-string v1, "starttime"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tudou/upload/UploadInfo;->setStartTime(J)V

    .line 219
    const-string v1, "finishtime"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tudou/upload/UploadInfo;->setFinishTime(J)V

    .line 220
    const-string v1, "progress"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setProgress(I)V

    .line 223
    const-string v1, "locationame"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setLocationName(Ljava/lang/String;)V

    .line 224
    const-string v1, "locationaddress"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setLocationAddress(Ljava/lang/String;)V

    .line 227
    const-string v1, "breakedsliceids"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/upload/UploadUtil;->string2List(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setBreakedSliceIds(Ljava/util/List;)V

    .line 230
    const-string v1, "duration"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/tudou/upload/UploadInfo;->setDuration(J)V

    .line 231
    const-string v1, "isnewvideo"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/tudou/upload/UploadInfo;->setNewVideo(Z)V

    .line 236
    const-string v1, "url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setJsonV4(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->analysisJsonV4()V

    .line 239
    return-object v0

    :cond_0
    move v1, v3

    .line 196
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 211
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 213
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 231
    goto :goto_3
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 7
    .param p0, "taskId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 383
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 384
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "status"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    sget-object v3, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "upload"

    const-string v5, "taskId=?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p0, v6, v2

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected static deleteUserData(Ljava/lang/String;)Z
    .locals 7
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 395
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "status"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    sget-object v3, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "upload"

    const-string v5, "username=?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p0, v6, v2

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static downloadInfo2Cv(Lcom/tudou/upload/UploadInfo;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "taskid"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "desc"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "tag"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "category"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getCategory()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v1, "username"

    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "privacy"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getPrivacy()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v4, "push"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->isPush()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v1, "videopassword"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getVideoPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "longitude"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "latitude"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "filepath"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "filename"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "filepostfix"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getFilePostfix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "size"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v1, "fileid"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "sid"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getExceptionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v1, "targethost"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTargetHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "targetipaddr"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTargetIpAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "md5"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v4, "iscreated"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->isInstantUpload()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v1, "uploadedsize"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string v4, "offset"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->isCreatedFile()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v1, "segmentsize"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getSliceSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v1, "createtime"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getCreateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string v1, "starttime"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStartTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    const-string v1, "finishtime"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getFinishTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v1, "locationame"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLocationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "locationaddress"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLocationAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "breakedsliceids"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getBreakedSliceIds()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/tudou/upload/UploadUtil;->list2String(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "duration"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string v1, "isnewvideo"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->isNewVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getJsonV4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-object v0

    :cond_0
    move v1, v3

    .line 124
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 139
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 141
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 159
    goto :goto_3
.end method

.method protected static getCount()I
    .locals 7

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "count":I
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 486
    sget-object v2, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from upload where username = ? and status != 6 and status != 4 order by createtime desc"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUserID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 487
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 488
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 489
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_0
    return v0
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/tudou/upload/UploadDB;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/tudou/upload/UploadDB;->instance:Lcom/tudou/upload/UploadDB;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/tudou/upload/UploadDB;

    invoke-direct {v0, p0}, Lcom/tudou/upload/UploadDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tudou/upload/UploadDB;->instance:Lcom/tudou/upload/UploadDB;

    .line 23
    :cond_0
    sget-object v0, Lcom/tudou/upload/UploadDB;->instance:Lcom/tudou/upload/UploadDB;

    return-object v0
.end method

.method public static getItem(Ljava/lang/String;)Lcom/tudou/upload/UploadInfo;
    .locals 7
    .param p0, "taskId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 277
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 278
    sget-object v2, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from upload where taskid = ?"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 279
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 280
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    const/4 v1, 0x0

    .line 286
    :goto_0
    return-object v1

    .line 283
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 284
    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->cursor2UploadInfo(Landroid/database/Cursor;)Lcom/tudou/upload/UploadInfo;

    move-result-object v1

    .line 285
    .local v1, "info":Lcom/tudou/upload/UploadInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected static getList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 250
    sget-object v2, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from upload where username = ? and status != 6 and status != 1 order by createtime desc"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUserID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 251
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->cursor2UploadInfo(Landroid/database/Cursor;)Lcom/tudou/upload/UploadInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 255
    return-object v1
.end method

.method protected static getListContainDelTask()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 264
    sget-object v2, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from upload where username = ? order by createtime desc"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUserID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 265
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->cursor2UploadInfo(Landroid/database/Cursor;)Lcom/tudou/upload/UploadInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 269
    return-object v1
.end method

.method protected static getPausedItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 334
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUserID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    :goto_0
    return-object v1

    .line 338
    :cond_0
    sget-object v2, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from upload where status = 5 and status != 6 and username = ? order by createtime asc"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUserID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 339
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v7, :cond_1

    .line 340
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 343
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->cursor2UploadInfo(Landroid/database/Cursor;)Lcom/tudou/upload/UploadInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 346
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected static getUnFinishedItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 309
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUserID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    :goto_0
    return-object v1

    .line 316
    :cond_0
    sget-object v2, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from upload where status not in(5, 1, 4,6)  and username = ? order by createtime asc"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUserID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 317
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v7, :cond_1

    .line 318
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 321
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->cursor2UploadInfo(Landroid/database/Cursor;)Lcom/tudou/upload/UploadInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected static getUploadList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 357
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUserID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    :goto_0
    return-object v1

    .line 361
    :cond_0
    sget-object v2, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUserID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 362
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v6, :cond_1

    .line 363
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 366
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->cursor2UploadInfo(Landroid/database/Cursor;)Lcom/tudou/upload/UploadInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected static getUploadedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    const-string v0, "select  * from upload where status = 1 and username = ? order by createtime desc limit 10"

    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->getUploadList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static insert(Lcom/tudou/upload/UploadInfo;)Z
    .locals 4
    .param p0, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 414
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 415
    sget-object v0, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload"

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/tudou/upload/UploadDB;->downloadInfo2Cv(Lcom/tudou/upload/UploadInfo;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static open()V
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->getInstance(Landroid/content/Context;)Lcom/tudou/upload/UploadDB;

    .line 428
    sget-object v0, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    sget-object v0, Lcom/tudou/upload/UploadDB;->instance:Lcom/tudou/upload/UploadDB;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 432
    :cond_1
    return-void
.end method

.method public static update(Lcom/tudou/upload/UploadInfo;)Z
    .locals 9
    .param p0, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 405
    invoke-static {}, Lcom/tudou/upload/UploadDB;->open()V

    .line 406
    sget-object v2, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "upload"

    invoke-static {p0}, Lcom/tudou/upload/UploadDB;->downloadInfo2Cv(Lcom/tudou/upload/UploadInfo;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "taskId=?"

    new-array v6, v0, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 445
    const-string v0, " CREATE TABLE IF NOT EXISTS upload ( taskid VARCHAR PRIMARY KEY,  title VARCHAR,  desc VARCHAR,  tag VARCHAR, category INTEGER, username VARCHAR, privacy INTEGER, push INTEGER, videopassword VARCHAR, longitude VARCHAR, latitude VARCHAR, filepath VARCHAR, filename VARCHAR,  filepostfix VARCHAR,  size INTEGER, fileid VARCHAR, sid INTEGER, targethost VARCHAR, targetipaddr VARCHAR, md5 VARCHAR, iscreated INTEGER, uploadedsize INTEGER, offset INTEGER, segmentsize INTEHER, status INTEHER, createtime INTEGER, starttime INTEGER, finishtime INTEGER, progress INTEGER, locationame VARCHAR,  locationaddress VARCHAR, breakedsliceids VARCHAR, duration INTEGER, url VARCHAR, inquireURL VARCHAR, isnewvideo INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 446
    sput-object p1, Lcom/tudou/upload/UploadDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 447
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 476
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 452
    :try_start_0
    const-string v1, "alter table upload add locationame VARCHAR"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    :try_start_1
    const-string v1, "alter table upload add locationaddress VARCHAR"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 462
    :goto_1
    :try_start_2
    const-string v1, "alter table upload add breakedsliceids VARCHAR"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 467
    :goto_2
    :try_start_3
    const-string v1, "alter table upload add duration INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 468
    const-string v1, "alter table upload add isnewvideo INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 472
    :goto_3
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 458
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 459
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 464
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 470
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
