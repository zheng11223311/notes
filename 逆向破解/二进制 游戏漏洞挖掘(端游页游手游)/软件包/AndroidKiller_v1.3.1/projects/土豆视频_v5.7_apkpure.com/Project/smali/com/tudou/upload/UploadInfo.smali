.class public Lcom/tudou/upload/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field private static final CACHE_FILENAME_PREFIX:Ljava/lang/String; = "cache_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSTER_DIR:Ljava/lang/String; = "images"

.field public static final STATE_CANCEL:I = 0x4

.field public static final STATE_CHECKING:I = 0x7

.field public static final STATE_CHECKING_DELETE:I = 0x9

.field public static final STATE_CHECKING_FAIL:I = 0x8

.field public static final STATE_DELETE:I = 0x6

.field public static final STATE_EXCEPTION:I = 0x2

.field public static final STATE_INIT:I = -0x1

.field public static final STATE_PAUSE:I = 0x5

.field public static final STATE_UPLOADED:I = 0x1

.field public static final STATE_UPLOADING:I = 0x0

.field public static final STATE_WAIT:I = 0x3

.field public static final UI_CHECKED_ITEM:I = 0x3

.field public static final UI_CHECKED_TITLE:I = 0x0

.field public static final UI_CHECKING_ITEM:I = 0x6

.field public static final UI_UPLOADED_ITEM:I = 0x5

.field public static final UI_UPLOADED_TITLE:I = 0x2

.field public static final UI_UPLOADING_ITEM:I = 0x4

.field public static final UI_UPLOADING_TITLE:I = 0x1

.field private static final V4_Features:Ljava/lang/String; = "V4_3"


# instance fields
.field private breakedSliceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private category:I

.field private createTime:J

.field private delReason:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private duration:J

.field private exceptionCode:I

.field private exceptionDetail:Ljava/lang/Object;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private filePostfix:Ljava/lang/String;

.field private finishTime:J

.field private finupurlV4:Ljava/lang/String;

.field private instantUpload:Z

.field private isChecked:Z

.field private isCreatedFile:Z

.field private isEdit:Z

.field private isNewVideo:Z

.field private itemCode:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private itemUrl:Ljava/lang/String;

.field private itemidV4:Ljava/lang/String;

.field private jsonV4:Ljava/lang/String;

.field private lastUpdateTime:J

.field private latitude:Ljava/lang/String;

.field private locationAddress:Ljava/lang/String;

.field private locationName:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field public mSliceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/SliceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private md5:Ljava/lang/String;

.field private mpsStatus:I

.field private outerPlayerUrl:Ljava/lang/String;

.field private picurl:Ljava/lang/String;

.field private privacy:I

.field private progress:I

.field private progurlV4:Ljava/lang/String;

.field private pubdate:Ljava/lang/String;

.field private push:Z

.field private remainTime:I

.field private size:J

.field private sizeDesc:Ljava/lang/String;

.field private sliceSize:I

.field private speed:I

.field private speedDesc:Ljava/lang/String;

.field private startTime:J

.field private status:I

.field private tag:Ljava/lang/String;

.field private targetHost:Ljava/lang/String;

.field private targetIpAddr:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tokenV4:Ljava/lang/String;

.field private totalTime:I

.field private uiType:I

.field private uploadListener:Lcom/tudou/upload/UploadListener;

.field private uploadToken:Ljava/lang/String;

.field private uploadedSize:J

.field private uploadedSizeDesc:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private videoPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 921
    new-instance v0, Lcom/tudou/upload/UploadInfo$1;

    invoke-direct {v0}, Lcom/tudou/upload/UploadInfo$1;-><init>()V

    sput-object v0, Lcom/tudou/upload/UploadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->taskId:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "\u4f18\u9177\u62cd\u5ba2 Android \u62cd\u5ba2 \u539f\u521b"

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->tag:Ljava/lang/String;

    .line 83
    const/16 v0, 0x5c

    iput v0, p0, Lcom/tudou/upload/UploadInfo;->category:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->targetIpAddr:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/tudou/upload/UploadInfo;->instantUpload:Z

    .line 101
    iput-wide v2, p0, Lcom/tudou/upload/UploadInfo;->uploadedSize:J

    .line 102
    iput-boolean v1, p0, Lcom/tudou/upload/UploadInfo;->isCreatedFile:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/upload/UploadInfo;->status:I

    .line 105
    iput-wide v2, p0, Lcom/tudou/upload/UploadInfo;->createTime:J

    .line 106
    iput-wide v2, p0, Lcom/tudou/upload/UploadInfo;->startTime:J

    .line 107
    iput-wide v2, p0, Lcom/tudou/upload/UploadInfo;->finishTime:J

    .line 108
    iput v1, p0, Lcom/tudou/upload/UploadInfo;->progress:I

    .line 113
    iput-wide v2, p0, Lcom/tudou/upload/UploadInfo;->lastUpdateTime:J

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->locationName:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->locationAddress:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->breakedSliceIds:Ljava/util/List;

    .line 120
    const-string v0, "0KB"

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->speedDesc:Ljava/lang/String;

    .line 121
    const-string v0, "0KB"

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->sizeDesc:Ljava/lang/String;

    .line 122
    const-string v0, "0KB"

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->uploadedSizeDesc:Ljava/lang/String;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/upload/UploadInfo;->isNewVideo:Z

    .line 173
    iput v1, p0, Lcom/tudou/upload/UploadInfo;->uiType:I

    return-void
.end method

.method public static getCheckingItem(Lorg/json/JSONObject;)Lcom/tudou/upload/UploadInfo;
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 1079
    new-instance v0, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v0}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 1081
    .local v0, "uploadInfo":Lcom/tudou/upload/UploadInfo;
    const-string/jumbo v1, "title"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTitle(Ljava/lang/String;)V

    .line 1082
    const-string v1, "pubdate"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setPubdate(Ljava/lang/String;)V

    .line 1085
    const-string v1, "delReason"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setDelReason(Ljava/lang/String;)V

    .line 1086
    const-string v1, "mpsStatus"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setMpsStatus(I)V

    .line 1102
    return-object v0
.end method

.method private static getLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "videoFilePath"    # Ljava/lang/String;

    .prologue
    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/youku/util/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "imageFileName":Ljava/lang/String;
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v4, "images"

    invoke-static {v3, v4}, Lcom/baseproject/image/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 380
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .local v1, "imageFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    const-string v3, "TAG_TUDOU"

    const-string/jumbo v4, "\u89c6\u9891\u672c\u5730\u622a\u56fe\u5b58\u5728\uff0c\u83b7\u53d6\u89c6\u9891\u672c\u5730\u622a\u56fe\u6210\u529f"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 387
    :goto_0
    return-object v3

    .line 386
    :cond_0
    const-string v3, "TAG_TUDOU"

    const-string/jumbo v4, "\u672a\u83b7\u53d6\u89c6\u9891\u672c\u5730\u622a\u56fe"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getThumbImg(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {p1}, Lcom/tudou/upload/UploadInfo;->getLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 373
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 363
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget v2, Lcom/tudou/android/Youku;->API_LEVEL:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 364
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tudou/upload/UploadUtil;->loadThumbnail(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 367
    :cond_1
    const/4 v2, 0x3

    invoke-static {p1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 369
    const-string v2, "TAG_TUDOU"

    const-string v3, "create Bitmap sucess"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    if-eqz v0, :cond_2

    .line 371
    invoke-static {v0, p1}, Lcom/tudou/upload/UploadInfo;->saveBmpToSD(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    .line 373
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getUploadedItem(Lorg/json/JSONObject;)Lcom/tudou/upload/UploadInfo;
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 1045
    new-instance v0, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v0}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 1046
    .local v0, "uploadInfo":Lcom/tudou/upload/UploadInfo;
    const-string v1, "itemId"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setItemId(Ljava/lang/String;)V

    .line 1047
    const-string/jumbo v1, "totalTime"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTotalTime(I)V

    .line 1051
    const-string v1, "pubDate"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setPubdate(Ljava/lang/String;)V

    .line 1053
    const-string/jumbo v1, "title"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setTitle(Ljava/lang/String;)V

    .line 1061
    const-string v1, "picUrl"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setPicurl(Ljava/lang/String;)V

    .line 1067
    const-string v1, "icode"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setItemCode(Ljava/lang/String;)V

    .line 1072
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 1073
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 1075
    return-object v0
.end method

.method private static saveBmpToSD(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "videoFilePath"    # Ljava/lang/String;

    .prologue
    .line 392
    if-nez p0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 395
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/youku/util/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v5, "images"

    invoke-static {v4, v5}, Lcom/baseproject/image/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 398
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 399
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 401
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v1, "file":Ljava/io/File;
    const-string v4, "TAG_TUDOU"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local pic save path======"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 404
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 405
    .local v3, "outStream":Ljava/io/OutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 406
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 407
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 408
    const-string v4, "TAG_TUDOU"

    const-string/jumbo v5, "save Bitmap to local sucess"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 409
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 413
    :catch_1
    move-exception v4

    goto :goto_0

    .line 411
    :catch_2
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public analysisJsonV4()V
    .locals 3

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/tudou/upload/UploadInfo;->jsonV4:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget-object v1, p0, Lcom/tudou/upload/UploadInfo;->jsonV4:Ljava/lang/String;

    const-string v2, "V4_3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/tudou/upload/UploadInfo;->jsonV4:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1130
    .local v0, "jObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "uploadingurl"

    invoke-static {v0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/upload/UploadInfo;->url:Ljava/lang/String;

    .line 1131
    const-string v1, "progurl"

    invoke-static {v0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/upload/UploadInfo;->progurlV4:Ljava/lang/String;

    .line 1132
    const-string v1, "finupurl"

    invoke-static {v0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/upload/UploadInfo;->finupurlV4:Ljava/lang/String;

    .line 1133
    const-string/jumbo v1, "token"

    invoke-static {v0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/upload/UploadInfo;->tokenV4:Ljava/lang/String;

    .line 1134
    const-string v1, "itemid"

    invoke-static {v0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/upload/UploadInfo;->itemidV4:Ljava/lang/String;

    goto :goto_0
.end method

.method public canAutoUpload()Z
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeChecked()V
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/tudou/upload/UploadInfo;->isChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tudou/upload/UploadInfo;->isChecked:Z

    .line 348
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone()Lcom/tudou/upload/UploadInfo;
    .locals 4

    .prologue
    .line 906
    const/4 v2, 0x0

    .line 908
    .local v2, "o":Lcom/tudou/upload/UploadInfo;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/tudou/upload/UploadInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_0
    return-object v2

    .line 909
    :catch_0
    move-exception v1

    .line 910
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->clone()Lcom/tudou/upload/UploadInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public genJsonV4()V
    .locals 3

    .prologue
    .line 1107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1109
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "v4"

    const-string v2, "V4_3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1110
    const-string/jumbo v1, "uploadingurl"

    iget-object v2, p0, Lcom/tudou/upload/UploadInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1111
    const-string v1, "progurl"

    iget-object v2, p0, Lcom/tudou/upload/UploadInfo;->progurlV4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1112
    const-string v1, "finupurl"

    iget-object v2, p0, Lcom/tudou/upload/UploadInfo;->finupurlV4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1113
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/tudou/upload/UploadInfo;->tokenV4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1114
    const-string v1, "itemid"

    iget-object v2, p0, Lcom/tudou/upload/UploadInfo;->itemidV4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/upload/UploadInfo;->jsonV4:Ljava/lang/String;

    .line 1120
    return-void

    .line 1116
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getBreakedSliceIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->breakedSliceIds:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->category:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 737
    iget-wide v0, p0, Lcom/tudou/upload/UploadInfo;->createTime:J

    return-wide v0
.end method

.method public getDelReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->delReason:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 889
    iget-wide v0, p0, Lcom/tudou/upload/UploadInfo;->duration:J

    return-wide v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->exceptionCode:I

    return v0
.end method

.method public getExceptionDetail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->exceptionDetail:Ljava/lang/Object;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePostfix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->filePostfix:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishTime()J
    .locals 2

    .prologue
    .line 753
    iget-wide v0, p0, Lcom/tudou/upload/UploadInfo;->finishTime:J

    return-wide v0
.end method

.method public getFinupurlV4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->finupurlV4:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->itemCode:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->itemUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemidV4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->itemidV4:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonV4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->jsonV4:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 805
    iget-wide v0, p0, Lcom/tudou/upload/UploadInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->locationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMpsStatus()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->mpsStatus:I

    return v0
.end method

.method public getOuterPlayerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->outerPlayerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPicurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->picurl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacy()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->privacy:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->progress:I

    return v0
.end method

.method public getProgurlV4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->progurlV4:Ljava/lang/String;

    return-object v0
.end method

.method public getPubdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->pubdate:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainTime()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->remainTime:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 676
    iget-wide v0, p0, Lcom/tudou/upload/UploadInfo;->size:J

    return-wide v0
.end method

.method public getSizeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->sizeDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getSliceSize()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->sliceSize:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->speed:I

    return v0
.end method

.method public getSpeedDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->speedDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 745
    iget-wide v0, p0, Lcom/tudou/upload/UploadInfo;->startTime:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->status:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->targetHost:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetIpAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->targetIpAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenV4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->tokenV4:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->totalTime:I

    return v0
.end method

.method public getUiType()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->uiType:I

    return v0
.end method

.method public getUploadListener()Lcom/tudou/upload/UploadListener;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->uploadListener:Lcom/tudou/upload/UploadListener;

    return-object v0
.end method

.method public getUploadToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->uploadToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadedSize()J
    .locals 2

    .prologue
    .line 648
    iget-wide v0, p0, Lcom/tudou/upload/UploadInfo;->uploadedSize:J

    return-wide v0
.end method

.method public getUploadedSizeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->uploadedSizeDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/tudou/upload/UploadInfo;->videoPassword:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/tudou/upload/UploadInfo;->isChecked:Z

    return v0
.end method

.method public isCreatedFile()Z
    .locals 1

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/tudou/upload/UploadInfo;->isCreatedFile:Z

    return v0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/tudou/upload/UploadInfo;->isEdit:Z

    return v0
.end method

.method public isInstantUpload()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/tudou/upload/UploadInfo;->instantUpload:Z

    return v0
.end method

.method public isNewVideo()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/tudou/upload/UploadInfo;->isNewVideo:Z

    return v0
.end method

.method public isPush()Z
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/tudou/upload/UploadInfo;->push:Z

    return v0
.end method

.method public setBreakedSliceIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 869
    .local p1, "breakedSliceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->breakedSliceIds:Ljava/util/List;

    .line 870
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 717
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->category:I

    .line 718
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/tudou/upload/UploadInfo;->isChecked:Z

    .line 344
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 741
    iput-wide p1, p0, Lcom/tudou/upload/UploadInfo;->createTime:J

    .line 742
    return-void
.end method

.method public setCreatedFile(Z)V
    .locals 0
    .param p1, "isCreatedFile"    # Z

    .prologue
    .line 833
    iput-boolean p1, p0, Lcom/tudou/upload/UploadInfo;->isCreatedFile:Z

    .line 834
    return-void
.end method

.method public setDelReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "delReason"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->delReason:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->desc:Ljava/lang/String;

    .line 702
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 893
    iput-wide p1, p0, Lcom/tudou/upload/UploadInfo;->duration:J

    .line 894
    return-void
.end method

.method public setEdit(Z)V
    .locals 0
    .param p1, "isEdit"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/tudou/upload/UploadInfo;->isEdit:Z

    .line 334
    return-void
.end method

.method public setExceptionCode(I)V
    .locals 0
    .param p1, "exceptionCode"    # I

    .prologue
    .line 769
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->exceptionCode:I

    .line 770
    return-void
.end method

.method public setExceptionDetail(Ljava/lang/Object;)V
    .locals 0
    .param p1, "exceptionDetail"    # Ljava/lang/Object;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->exceptionDetail:Ljava/lang/Object;

    .line 778
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->fileName:Ljava/lang/String;

    .line 726
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 584
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "fileOrgName":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tudou/upload/UploadInfo;->setFileName(Ljava/lang/String;)V

    .line 587
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tudou/upload/UploadInfo;->setFilePostfix(Ljava/lang/String;)V

    .line 588
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->filePath:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public setFilePostfix(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePostfix"    # Ljava/lang/String;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->filePostfix:Ljava/lang/String;

    .line 734
    return-void
.end method

.method public setFinishTime(J)V
    .locals 1
    .param p1, "finishTime"    # J

    .prologue
    .line 757
    iput-wide p1, p0, Lcom/tudou/upload/UploadInfo;->finishTime:J

    .line 758
    return-void
.end method

.method public setFinupurlV4(Ljava/lang/String;)V
    .locals 0
    .param p1, "finupurlV4"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->finupurlV4:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setInstantUpload(Z)V
    .locals 0
    .param p1, "instantUpload"    # Z

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/tudou/upload/UploadInfo;->instantUpload:Z

    .line 597
    return-void
.end method

.method public setItemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->itemCode:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->itemId:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setItemUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemUrl"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->itemUrl:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setItemidV4(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemidV4"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->itemidV4:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setJsonV4(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonV4"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->jsonV4:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 1
    .param p1, "lastUpdateTime"    # J

    .prologue
    .line 809
    iput-wide p1, p0, Lcom/tudou/upload/UploadInfo;->lastUpdateTime:J

    .line 810
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->latitude:Ljava/lang/String;

    .line 826
    return-void
.end method

.method public setLocationAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationAddress"    # Ljava/lang/String;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->locationAddress:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationName"    # Ljava/lang/String;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->locationName:Ljava/lang/String;

    .line 613
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->longitude:Ljava/lang/String;

    .line 818
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->md5:Ljava/lang/String;

    .line 637
    return-void
.end method

.method public setMpsStatus(I)V
    .locals 0
    .param p1, "mpsStatus"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->mpsStatus:I

    .line 264
    return-void
.end method

.method public setNewVideo(Z)V
    .locals 0
    .param p1, "isNewVideo"    # Z

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/tudou/upload/UploadInfo;->isNewVideo:Z

    .line 902
    return-void
.end method

.method public setOuterPlayerUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "outerPlayerUrl"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->outerPlayerUrl:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setPicurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "picurl"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->picurl:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setPrivacy(I)V
    .locals 0
    .param p1, "privacy"    # I

    .prologue
    .line 785
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->privacy:I

    .line 786
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 540
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->progress:I

    if-eq v0, p1, :cond_0

    .line 541
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->progress:I

    .line 542
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/upload/UploadListener;->onProgressChange()V

    .line 547
    :cond_0
    return-void
.end method

.method public setProgurlV4(Ljava/lang/String;)V
    .locals 0
    .param p1, "progurlV4"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->progurlV4:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setPubdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "pubdate"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->pubdate:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setPush(Z)V
    .locals 0
    .param p1, "push"    # Z

    .prologue
    .line 793
    iput-boolean p1, p0, Lcom/tudou/upload/UploadInfo;->push:Z

    .line 794
    return-void
.end method

.method public setRemainTime(I)V
    .locals 0
    .param p1, "remainTime"    # I

    .prologue
    .line 885
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->remainTime:I

    .line 886
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 573
    iput-wide p1, p0, Lcom/tudou/upload/UploadInfo;->size:J

    .line 574
    invoke-static {p1, p2}, Lcom/tudou/upload/UploadUtil;->parseSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->sizeDesc:Ljava/lang/String;

    .line 576
    return-void
.end method

.method public setSizeDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->sizeDesc:Ljava/lang/String;

    .line 850
    return-void
.end method

.method public setSliceSize(I)V
    .locals 0
    .param p1, "sliceSize"    # I

    .prologue
    .line 861
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->sliceSize:I

    .line 862
    return-void
.end method

.method public setSpeed(I)V
    .locals 4
    .param p1, "speed"    # I

    .prologue
    .line 555
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->speed:I

    if-ne v0, p1, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->speed:I

    .line 559
    invoke-static {p1}, Lcom/tudou/upload/UploadUtil;->parseSpeed(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->speedDesc:Ljava/lang/String;

    .line 560
    if-gtz p1, :cond_2

    const v0, 0x15180

    :goto_1
    iput v0, p0, Lcom/tudou/upload/UploadInfo;->remainTime:I

    .line 563
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/upload/UploadListener;->onUploadSpeedChange()V

    goto :goto_0

    .line 560
    :cond_2
    iget-wide v0, p0, Lcom/tudou/upload/UploadInfo;->size:J

    iget-wide v2, p0, Lcom/tudou/upload/UploadInfo;->uploadedSize:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p1

    goto :goto_1
.end method

.method public setSpeedDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->speedDesc:Ljava/lang/String;

    .line 846
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 749
    iput-wide p1, p0, Lcom/tudou/upload/UploadInfo;->startTime:J

    .line 750
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 492
    iget v0, p0, Lcom/tudou/upload/UploadInfo;->status:I

    if-eq v0, p1, :cond_6

    .line 494
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->status:I

    .line 495
    if-nez p1, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/upload/UploadListener;->onStart()V

    .line 516
    :cond_0
    :goto_0
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->status:I

    .line 517
    return-void

    .line 498
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/upload/UploadListener;->onPause()V

    goto :goto_0

    .line 501
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 502
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/upload/UploadListener;->onFinish()V

    goto :goto_0

    .line 504
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 505
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/upload/UploadListener;->onCancel()V

    goto :goto_0

    .line 507
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 508
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/upload/UploadListener;->onException()V

    goto :goto_0

    .line 510
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadListener()Lcom/tudou/upload/UploadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/upload/UploadListener;->onWait()V

    goto :goto_0

    .line 515
    :cond_6
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->status:I

    goto :goto_0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->tag:Ljava/lang/String;

    .line 710
    return-void
.end method

.method public setTargetHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetHost"    # Ljava/lang/String;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->targetHost:Ljava/lang/String;

    .line 673
    return-void
.end method

.method public setTargetIpAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetIpAddr"    # Ljava/lang/String;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->targetIpAddr:Ljava/lang/String;

    .line 629
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->taskId:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/tudou/upload/UploadInfo;->setDesc(Ljava/lang/String;)V

    .line 693
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->title:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public setTokenV4(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenV4"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->tokenV4:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setTotalTime(I)V
    .locals 0
    .param p1, "totalTime"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->totalTime:I

    .line 230
    return-void
.end method

.method public setUiType(I)V
    .locals 0
    .param p1, "uiType"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/tudou/upload/UploadInfo;->uiType:I

    .line 188
    return-void
.end method

.method public setUploadListener(Lcom/tudou/upload/UploadListener;)V
    .locals 0
    .param p1, "uploadListener"    # Lcom/tudou/upload/UploadListener;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->uploadListener:Lcom/tudou/upload/UploadListener;

    .line 605
    return-void
.end method

.method public setUploadToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadToken"    # Ljava/lang/String;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->uploadToken:Ljava/lang/String;

    .line 645
    return-void
.end method

.method public setUploadedSize(J)V
    .locals 5
    .param p1, "uploadedSize"    # J

    .prologue
    .line 525
    iput-wide p1, p0, Lcom/tudou/upload/UploadInfo;->uploadedSize:J

    .line 526
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-static {p1, p2}, Lcom/tudou/upload/UploadUtil;->parseSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/upload/UploadInfo;->uploadedSizeDesc:Ljava/lang/String;

    .line 531
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tudou/upload/UploadInfo;->setProgress(I)V

    goto :goto_0
.end method

.method public setUploadedSizeDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadedSizeDesc"    # Ljava/lang/String;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->uploadedSizeDesc:Ljava/lang/String;

    .line 878
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->url:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->userName:Ljava/lang/String;

    .line 657
    return-void
.end method

.method public setVideoPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoPassword"    # Ljava/lang/String;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/tudou/upload/UploadInfo;->videoPassword:Ljava/lang/String;

    .line 802
    return-void
.end method

.method public stateMaybeChange()Z
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 979
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getPrivacy()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getVideoPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getFilePostfix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 990
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTargetHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTargetIpAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 998
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1000
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1001
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getFinishTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1002
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getExceptionCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getSpeed()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getSpeedDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getSizeDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getUploadedSizeDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getRemainTime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1012
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getJsonV4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1013
    return-void
.end method
