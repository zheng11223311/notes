.class public final Lcom/tudou/service/download/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tudou/service/download/DownloadInfo;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXCEPTION_0_SPACE:I = 0xd

.field public static final EXCEPTION_CHANGE_SDCARD:I = 0xa

.field public static final EXCEPTION_ENCRYPTION:I = 0xc

.field public static final EXCEPTION_HTTP_NOT_FOUND:I = 0x6

.field public static final EXCEPTION_INSERT_SDCARD:I = 0xb

.field public static final EXCEPTION_NEED_MONKEY:I = 0xe

.field public static final EXCEPTION_NO_COPYRIGHT:I = 0x4

.field public static final EXCEPTION_NO_NETWORK:I = 0x2

.field public static final EXCEPTION_NO_RESOURCES:I = 0x5

.field public static final EXCEPTION_NO_SDCARD:I = 0x1

.field public static final EXCEPTION_NO_SPACE:I = 0x3

.field public static final EXCEPTION_TIMEOUT:I = 0x7

.field public static final EXCEPTION_UNKNOWN_ERROR:I = 0x9

.field public static final EXCEPTION_WRITE_ERROR:I = 0x8

.field public static final FORMAT_3GP:I = 0x2

.field public static final FORMAT_3GPHD:I = 0x4

.field public static final FORMAT_F4V:I = 0x8

.field public static final FORMAT_FLV:I = 0x3

.field public static final FORMAT_FLVHD:I = 0x5

.field public static final FORMAT_FLVHD2:I = 0x7

.field public static final FORMAT_M3U8:I = 0x6

.field public static final FORMAT_MP4:I = 0x1

.field public static final FORMAT_POSTFIX:[Ljava/lang/String;

.field public static final FORMAT_STRINGS:[Ljava/lang/String;

.field public static final STATE_CANCEL:I = 0x4

.field public static final STATE_DOWNLOADING:I = 0x0

.field public static final STATE_EXCEPTION:I = 0x2

.field public static final STATE_FINISH:I = 0x1

.field public static final STATE_INIT:I = -0x1

.field public static final STATE_PAUSE:I = 0x3

.field public static final STATE_WAITING:I = 0x5

.field public static compareBySeq:Z


# instance fields
.field public cats:Ljava/lang/String;

.field public createTime:J

.field public dlerror:Ljava/lang/String;

.field public downloadListener:Lcom/tudou/service/download/DownloadListener;

.field public downloadedSize:J

.field public errortype:Ljava/lang/String;

.field public exceptionId:I

.field public exclusive_logo:Z

.field public finishTime:J

.field public format:I

.field private formto:Ljava/lang/String;

.field public getUrlTime:J

.field public headerSize:J

.field public hotlink:Z

.field public imgThUrl:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public isEncryption:Z

.field public isShowWatermark:Z

.field public isThumbnailDownloading:Z

.field public isplay:Z

.field public istrailer:Z

.field public langcode:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public lastPlayTime:J

.field public lastUpdateTime:J

.field public license_num:Ljava/lang/String;

.field public media_type:Ljava/lang/String;

.field public notification:Landroid/app/Notification;

.field public oip:Ljava/lang/String;

.field public playTime:I

.field private progress:D

.field public register_num:Ljava/lang/String;

.field public retry:I

.field public savePath:Ljava/lang/String;

.field public seconds:I

.field public segCount:I

.field public segDownloadedSize:J

.field public segId:I

.field public segUrl:Ljava/lang/String;

.field public segsSeconds:[I

.field public segsSize:[J

.field public segsUrl:[Ljava/lang/String;

.field public segsfileId:[Ljava/lang/String;

.field public seriesmode:Ljava/lang/String;

.field public show_videoseq:I

.field public show_videostage:I

.field public showepisode_total:I

.field public showid:Ljava/lang/String;

.field public showname:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public size:J

.field public speed:Ljava/lang/String;

.field public spendTime:J

.field public startTime:J

.field state:I

.field public subtitle:Ljava/lang/String;

.field public taskId:Ljava/lang/String;

.field public tempSecond:I

.field public tempSize:J

.field public thread:Lcom/tudou/service/download/FileDownloadThread;

.field public title:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field private tudouFormat:I

.field public type:I

.field public ver:Ljava/lang/String;

.field public verCode:I

.field public vertical_player:Z

.field public videoid:Ljava/lang/String;

.field public xuanjiTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 65
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "mp4"

    aput-object v1, v0, v3

    const-string v1, "3gp"

    aput-object v1, v0, v5

    const-string v1, "flv"

    aput-object v1, v0, v6

    const-string v1, "3gphd"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flvhd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "m3u8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hd2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "f4v"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    .line 70
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "mp4"

    aput-object v1, v0, v3

    const-string v1, "3gp"

    aput-object v1, v0, v5

    const-string v1, "flv"

    aput-object v1, v0, v6

    const-string v1, "3gp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "m3u8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hd2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "f4v"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tudou/service/download/DownloadInfo;->FORMAT_POSTFIX:[Ljava/lang/String;

    .line 656
    sput-boolean v3, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 768
    new-instance v0, Lcom/tudou/service/download/DownloadInfo$1;

    invoke-direct {v0}, Lcom/tudou/service/download/DownloadInfo$1;-><init>()V

    sput-object v0, Lcom/tudou/service/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput v6, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    .line 148
    const-string v0, "0K"

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->speed:Ljava/lang/String;

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->seriesmode:Ljava/lang/String;

    .line 187
    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    .line 191
    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    .line 195
    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    .line 196
    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->finishTime:J

    .line 197
    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    .line 198
    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->lastUpdateTime:J

    .line 199
    iput v2, p0, Lcom/tudou/service/download/DownloadInfo;->exceptionId:I

    .line 200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tudou/service/download/DownloadInfo;->progress:D

    .line 212
    iput v2, p0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    .line 216
    iput v3, p0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    .line 226
    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 254
    iput-boolean v3, p0, Lcom/tudou/service/download/DownloadInfo;->hotlink:Z

    .line 267
    iput v2, p0, Lcom/tudou/service/download/DownloadInfo;->retry:I

    .line 271
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->isThumbnailDownloading:Z

    .line 275
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->isplay:Z

    .line 279
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->istrailer:Z

    .line 302
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->isShowWatermark:Z

    .line 303
    iput v6, p0, Lcom/tudou/service/download/DownloadInfo;->type:I

    .line 308
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->exclusive_logo:Z

    .line 312
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->vertical_player:Z

    .line 316
    iput-boolean v3, p0, Lcom/tudou/service/download/DownloadInfo;->isEncryption:Z

    .line 321
    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->headerSize:J

    .line 783
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput v3, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    .line 148
    const-string v0, "0K"

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->speed:Ljava/lang/String;

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->seriesmode:Ljava/lang/String;

    .line 187
    iput-wide v6, p0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    .line 191
    iput-wide v6, p0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    .line 195
    iput-wide v6, p0, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    .line 196
    iput-wide v6, p0, Lcom/tudou/service/download/DownloadInfo;->finishTime:J

    .line 197
    iput-wide v6, p0, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    .line 198
    iput-wide v6, p0, Lcom/tudou/service/download/DownloadInfo;->lastUpdateTime:J

    .line 199
    iput v2, p0, Lcom/tudou/service/download/DownloadInfo;->exceptionId:I

    .line 200
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->progress:D

    .line 212
    iput v2, p0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    .line 216
    iput v1, p0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    .line 226
    iput-wide v6, p0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 254
    iput-boolean v1, p0, Lcom/tudou/service/download/DownloadInfo;->hotlink:Z

    .line 267
    iput v2, p0, Lcom/tudou/service/download/DownloadInfo;->retry:I

    .line 271
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->isThumbnailDownloading:Z

    .line 275
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->isplay:Z

    .line 279
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->istrailer:Z

    .line 302
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->isShowWatermark:Z

    .line 303
    iput v3, p0, Lcom/tudou/service/download/DownloadInfo;->type:I

    .line 308
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->exclusive_logo:Z

    .line 312
    iput-boolean v2, p0, Lcom/tudou/service/download/DownloadInfo;->vertical_player:Z

    .line 316
    iput-boolean v1, p0, Lcom/tudou/service/download/DownloadInfo;->isEncryption:Z

    .line 321
    iput-wide v6, p0, Lcom/tudou/service/download/DownloadInfo;->headerSize:J

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->format:I

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->language:Ljava/lang/String;

    .line 791
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->xuanjiTitle:Ljava/lang/String;

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    .line 796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->showepisode_total:I

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->cats:Ljava/lang/String;

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    .line 799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->speed:Ljava/lang/String;

    .line 804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->seriesmode:Ljava/lang/String;

    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->size:J

    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->formto:Ljava/lang/String;

    .line 809
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    .line 810
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->media_type:Ljava/lang/String;

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    .line 826
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->getUrlTime:J

    .line 831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->exceptionId:I

    .line 832
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->progress:D

    .line 833
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    .line 834
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->retry:I

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->type:I

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tudou/service/download/DownloadInfo;->isEncryption:Z

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->verCode:I

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tudou/service/download/DownloadInfo;->istrailer:Z

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->register_num:Ljava/lang/String;

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->license_num:Ljava/lang/String;

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/tudou/service/download/DownloadInfo;->vertical_player:Z

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/tudou/service/download/DownloadInfo;->exclusive_logo:Z

    .line 843
    return-void

    :cond_0
    move v0, v2

    .line 836
    goto :goto_0

    :cond_1
    move v0, v2

    .line 838
    goto :goto_1

    :cond_2
    move v0, v2

    .line 841
    goto :goto_2

    :cond_3
    move v1, v2

    .line 842
    goto :goto_3
.end method

.method public static getExceptionInfo(I)Ljava/lang/String;
    .locals 3
    .param p0, "exceptionId"    # I

    .prologue
    const v2, 0x7f0d0117

    const v1, 0x7f0d0101

    .line 478
    packed-switch p0, :pswitch_data_0

    .line 511
    const-string v0, ""

    :goto_0
    return-object v0

    .line 480
    :pswitch_0
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 482
    :pswitch_1
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 484
    :pswitch_2
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d0109

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 486
    :pswitch_3
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d02c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 488
    :pswitch_4
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :pswitch_5
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d00ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 493
    :pswitch_6
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 495
    :pswitch_7
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d010f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 497
    :pswitch_8
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 499
    :pswitch_9
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :pswitch_a
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d0119

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 503
    :pswitch_b
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 505
    :pswitch_c
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d0104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 507
    :pswitch_d
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_5
        :pswitch_d
    .end packed-switch
.end method

.method public static jsonToDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;
    .locals 9
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, -0x1

    .line 586
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 587
    :cond_0
    const/4 v0, 0x0

    .line 650
    :goto_0
    return-object v0

    .line 588
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, "o":Lorg/json/JSONObject;
    new-instance v0, Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {v0}, Lcom/tudou/service/download/DownloadInfo;-><init>()V

    .line 594
    .local v0, "info":Lcom/tudou/service/download/DownloadInfo;
    const-string v2, "formto"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tudou/service/download/DownloadInfo;->setFormto(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    .line 596
    const-string/jumbo v2, "subtitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    .line 597
    const-string/jumbo v2, "xuanjiTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->xuanjiTitle:Ljava/lang/String;

    .line 598
    const-string/jumbo v2, "vid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    .line 599
    const-string/jumbo v2, "showid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 600
    const-string v2, "format"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->format:I

    .line 601
    const-string/jumbo v2, "show_videoseq"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    .line 602
    const-string/jumbo v2, "show_videostage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->show_videostage:I

    .line 603
    const-string/jumbo v2, "showepisode_total"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->showepisode_total:I

    .line 604
    const-string v2, "cats"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->cats:Ljava/lang/String;

    .line 605
    const-string/jumbo v2, "seconds"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    .line 606
    const-string/jumbo v2, "size"

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->size:J

    .line 607
    const-string/jumbo v2, "segcount"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    .line 608
    const-string/jumbo v2, "segsseconds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->string2int([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->segsSeconds:[I

    .line 610
    const-string/jumbo v2, "segssize"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->string2long([Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    .line 611
    const-string/jumbo v2, "segsUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v8, [Ljava/lang/String;

    :goto_1
    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    .line 613
    const-string/jumbo v2, "taskid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    .line 614
    const-string v2, "downloadedsize"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    .line 615
    const-string/jumbo v2, "segdownloadedsize"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    .line 616
    const-string/jumbo v2, "segstep"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    .line 617
    const-string v2, "createtime"

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    .line 618
    const-string/jumbo v2, "starttime"

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    .line 619
    const-string/jumbo v2, "spendTime"

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    .line 620
    const-string v2, "getUrlTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->getUrlTime:J

    .line 621
    const-string v2, "finishtime"

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->finishTime:J

    .line 622
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tudou/service/download/DownloadInfo;->setState(I)V

    .line 623
    const-string/jumbo v2, "seriesmode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->seriesmode:Ljava/lang/String;

    .line 624
    const-string v2, "exceptionid"

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->exceptionId:I

    .line 625
    const-string v2, "progress"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tudou/service/download/DownloadInfo;->setProgress(D)V

    .line 626
    const-string v2, "language"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->language:Ljava/lang/String;

    .line 627
    const-string v2, "langcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->langcode:Ljava/lang/String;

    .line 628
    const-string v2, "playTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    .line 629
    const-string v2, "lastPlayTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tudou/service/download/DownloadInfo;->lastPlayTime:J

    .line 630
    const-string v2, "imgThUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->imgThUrl:Ljava/lang/String;

    .line 631
    const-string v2, "imgUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    .line 632
    const-string v2, "media_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->media_type:Ljava/lang/String;

    .line 633
    const-string v2, "errortype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    .line 634
    const-string v2, "dlerror"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 635
    const-string/jumbo v2, "showname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 636
    const-string/jumbo v2, "tudouformat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    .line 637
    const-string v2, "hot"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/tudou/service/download/DownloadInfo;->hotlink:Z

    .line 638
    const-string/jumbo v2, "ver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 639
    const-string/jumbo v2, "ver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->ver:Ljava/lang/String;

    .line 641
    :cond_2
    const-string v2, "isShowWatermark"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/tudou/service/download/DownloadInfo;->isShowWatermark:Z

    .line 642
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->type:I

    .line 643
    const-string v2, "isEncryption"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/tudou/service/download/DownloadInfo;->isEncryption:Z

    .line 644
    const-string/jumbo v2, "verCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tudou/service/download/DownloadInfo;->verCode:I

    .line 645
    const-string v2, "istrailer"

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/tudou/service/download/DownloadInfo;->istrailer:Z

    .line 646
    const-string/jumbo v2, "register_num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->register_num:Ljava/lang/String;

    .line 647
    const-string v2, "license_num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/service/download/DownloadInfo;->license_num:Ljava/lang/String;

    .line 648
    const-string/jumbo v2, "vertical_player"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/tudou/service/download/DownloadInfo;->vertical_player:Z

    .line 649
    const-string v2, "exclusive_logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/tudou/service/download/DownloadInfo;->exclusive_logo:Z

    goto/16 :goto_0

    .line 611
    :cond_3
    const-string/jumbo v2, "segsUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/tudou/service/download/DownloadInfo;)I
    .locals 6
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 661
    sget-boolean v2, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    if-eqz v2, :cond_2

    .line 662
    iget v2, p0, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    if-le v2, v3, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 665
    goto :goto_0

    .line 668
    :cond_2
    iget v2, p1, Lcom/tudou/service/download/DownloadInfo;->state:I

    if-ne v2, v0, :cond_3

    .line 669
    iget-wide v2, p0, Lcom/tudou/service/download/DownloadInfo;->finishTime:J

    iget-wide v4, p1, Lcom/tudou/service/download/DownloadInfo;->finishTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    .line 672
    goto :goto_0

    .line 675
    :cond_3
    iget-wide v2, p0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    iget-wide v4, p1, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    .line 676
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lcom/tudou/service/download/DownloadInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tudou/service/download/DownloadInfo;->compareTo(Lcom/tudou/service/download/DownloadInfo;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 686
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/tudou/service/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    check-cast p1, Lcom/tudou/service/download/DownloadInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 689
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    return-wide v0
.end method

.method public getDownloadedSize()J
    .locals 2

    .prologue
    .line 380
    iget-wide v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    return-wide v0
.end method

.method public getExceptionId()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->exceptionId:I

    return v0
.end method

.method public getExceptionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->exceptionId:I

    invoke-static {v0}, Lcom/tudou/service/download/DownloadInfo;->getExceptionInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->format:I

    return v0
.end method

.method public getFormto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->formto:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    return v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 457
    iget-wide v0, p0, Lcom/tudou/service/download/DownloadInfo;->progress:D

    double-to-int v0, v0

    return v0
.end method

.method public getQualityType()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 745
    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->format:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 765
    :cond_1
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 752
    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 756
    goto :goto_0

    .line 758
    :pswitch_4
    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 759
    goto :goto_0

    .line 760
    :cond_2
    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 762
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v2

    .line 763
    goto :goto_0

    .line 745
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    return v0
.end method

.method public getSegsSeconds()[I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->segsSeconds:[I

    return-object v0
.end method

.method public getShowid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 376
    iget-wide v0, p0, Lcom/tudou/service/download/DownloadInfo;->size:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTudouFormat()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    return v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    return-object v0
.end method

.method public isSeries()Z
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/service/download/DownloadInfo;->istrailer:Z

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    const/4 v0, 0x0

    .line 391
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDownloadInnerListener(Lcom/tudou/service/download/DownloadListenerImpl;)V
    .locals 0
    .param p1, "downloadListenerImpl"    # Lcom/tudou/service/download/DownloadListenerImpl;

    .prologue
    .line 705
    return-void
.end method

.method public setDownloadListener(Lcom/tudou/service/download/DownloadListener;)V
    .locals 0
    .param p1, "downloadListener"    # Lcom/tudou/service/download/DownloadListener;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    .line 373
    return-void
.end method

.method public setExceptionId(I)V
    .locals 0
    .param p1, "exceptionId"    # I

    .prologue
    .line 469
    iput p1, p0, Lcom/tudou/service/download/DownloadInfo;->exceptionId:I

    .line 470
    return-void
.end method

.method public setFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 712
    iput p1, p0, Lcom/tudou/service/download/DownloadInfo;->format:I

    .line 713
    return-void
.end method

.method public setFormto(Ljava/lang/String;)V
    .locals 0
    .param p1, "formto"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/tudou/service/download/DownloadInfo;->formto:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setProgress(D)V
    .locals 11
    .param p1, "progress"    # D

    .prologue
    const-wide/16 v8, 0x3e8

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 432
    .local v2, "time":J
    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->progress:D

    cmpl-double v1, v4, p1

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->progress:D

    sub-double v4, p1, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_0

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->lastUpdateTime:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v8

    if-ltz v1, :cond_0

    .line 434
    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->size:J

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/tudou/service/download/DownloadInfo;->progress:D

    sub-double v6, p1, v6

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/tudou/service/download/DownloadInfo;->lastUpdateTime:J

    sub-long v6, v2, v6

    div-long/2addr v6, v8

    long-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v0, v4

    .line 435
    .local v0, "tempspeed":F
    invoke-static {v0}, Lcom/youku/util/Util;->formatSize2(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->speed:Ljava/lang/String;

    .line 436
    iput-wide p1, p0, Lcom/tudou/service/download/DownloadInfo;->progress:D

    .line 437
    iput-wide v2, p0, Lcom/tudou/service/download/DownloadInfo;->lastUpdateTime:J

    .line 440
    iget-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    if-nez v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    invoke-interface {v1, p1, p2}, Lcom/tudou/service/download/DownloadListener;->onProgressChange(D)V

    .line 443
    .end local v0    # "tempspeed":F
    :cond_0
    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "savePath2"    # Ljava/lang/String;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    .line 700
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tudou/service/download/DownloadInfo;->setState(IZ)V

    .line 396
    return-void
.end method

.method public setState(IZ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "start"    # Z

    .prologue
    .line 400
    iput p1, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    .line 401
    packed-switch p1, :pswitch_data_0

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 403
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    invoke-interface {v0}, Lcom/tudou/service/download/DownloadListener;->onStart()V

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    invoke-interface {v0, p2}, Lcom/tudou/service/download/DownloadListener;->onPause(Z)V

    goto :goto_0

    .line 411
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    invoke-interface {v0}, Lcom/tudou/service/download/DownloadListener;->onFinish()V

    goto :goto_0

    .line 415
    :pswitch_3
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    invoke-interface {v0}, Lcom/tudou/service/download/DownloadListener;->onCancel()V

    goto :goto_0

    .line 419
    :pswitch_4
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    invoke-interface {v0}, Lcom/tudou/service/download/DownloadListener;->onException()V

    goto :goto_0

    .line 423
    :pswitch_5
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->downloadListener:Lcom/tudou/service/download/DownloadListener;

    invoke-interface {v0}, Lcom/tudou/service/download/DownloadListener;->onWaiting()V

    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public setTudouFormat(IZ)V
    .locals 0
    .param p1, "tudouFormat"    # I
    .param p2, "self"    # Z

    .prologue
    .line 716
    if-eqz p2, :cond_0

    .line 717
    iput p1, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    .line 719
    :cond_0
    return-void
.end method

.method public setTudouFormatByYouku(I)V
    .locals 1
    .param p1, "youkuFormat"    # I

    .prologue
    .line 722
    packed-switch p1, :pswitch_data_0

    .line 739
    :goto_0
    :pswitch_0
    return-void

    .line 725
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    goto :goto_0

    .line 731
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    goto :goto_0

    .line 736
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public stateMaybeChange()Z
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

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

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 515
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 517
    .local v1, "o":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string/jumbo v2, "subtitle"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string/jumbo v2, "xuanjiTitle"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->xuanjiTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string/jumbo v2, "vid"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string/jumbo v2, "showid"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v2, "format"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->format:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 523
    const-string/jumbo v2, "show_videoseq"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 524
    const-string/jumbo v2, "show_videostage"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->show_videostage:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 525
    const-string/jumbo v2, "showepisode_total"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->showepisode_total:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 526
    const-string v2, "cats"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->cats:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string/jumbo v2, "seconds"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 528
    const-string/jumbo v2, "size"

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->size:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 529
    const-string/jumbo v2, "segcount"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 530
    const-string/jumbo v2, "segsseconds"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->segsSeconds:[I

    invoke-static {v3}, Lcom/youku/util/Util;->join([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    const-string/jumbo v2, "segssize"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    invoke-static {v3}, Lcom/youku/util/Util;->join([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string/jumbo v2, "taskid"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string v2, "downloadedsize"

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 534
    const-string/jumbo v2, "segdownloadedsize"

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 535
    const-string/jumbo v2, "segstep"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 536
    const-string v2, "createtime"

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 537
    const-string/jumbo v2, "starttime"

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 538
    const-string/jumbo v2, "spendTime"

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 539
    const-string v2, "getUrlTime"

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->getUrlTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 540
    const-string v2, "finishtime"

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->finishTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 541
    const-string/jumbo v2, "segsUrl"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/util/Util;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string/jumbo v2, "state"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 543
    const-string/jumbo v2, "seriesmode"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->seriesmode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    const-string v2, "exceptionid"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->exceptionId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 545
    const-string v2, "progress"

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->progress:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 546
    const-string/jumbo v2, "tudouformat"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 547
    iget-object v2, p0, Lcom/tudou/service/download/DownloadInfo;->language:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    const-string v2, "language"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->language:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    :cond_0
    iget-object v2, p0, Lcom/tudou/service/download/DownloadInfo;->langcode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 551
    const-string v2, "langcode"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->langcode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    :cond_1
    iget-object v2, p0, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 554
    const-string/jumbo v2, "showname"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    :cond_2
    const-string v2, "playTime"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 557
    const-string v2, "lastPlayTime"

    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->lastPlayTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 558
    const-string v2, "imgThUrl"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->imgThUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v2, "imgUrl"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string v2, "media_type"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->media_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const-string v2, "dlerror"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    const-string v2, "errortype"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    const-string v2, "formto"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->formto:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string/jumbo v2, "ver"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->ver:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v2, "hot"

    iget-boolean v3, p0, Lcom/tudou/service/download/DownloadInfo;->hotlink:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 566
    const-string v2, "logo"

    iget-boolean v3, p0, Lcom/tudou/service/download/DownloadInfo;->isShowWatermark:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 567
    const-string/jumbo v2, "type"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->type:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 568
    const-string v2, "isEncryption"

    iget-boolean v3, p0, Lcom/tudou/service/download/DownloadInfo;->isEncryption:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 569
    const-string/jumbo v2, "verCode"

    iget v3, p0, Lcom/tudou/service/download/DownloadInfo;->verCode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 570
    const-string v2, "istrailer"

    iget-boolean v3, p0, Lcom/tudou/service/download/DownloadInfo;->istrailer:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 571
    const-string/jumbo v2, "register_num"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->register_num:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v2, "license_num"

    iget-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->license_num:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    const-string/jumbo v2, "vertical_player"

    iget-boolean v3, p0, Lcom/tudou/service/download/DownloadInfo;->vertical_player:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 574
    const-string v2, "exclusive_logo"

    iget-boolean v3, p0, Lcom/tudou/service/download/DownloadInfo;->exclusive_logo:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    return-object v1

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "toJSONObject"

    invoke-static {v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 577
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 695
    .local v0, "o":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 852
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 854
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->tudouFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->xuanjiTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 861
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->showepisode_total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->cats:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 864
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->speed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 868
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->seriesmode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 871
    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->size:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 872
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->formto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->downloadedSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 874
    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->createTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 875
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->segId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->segDownloadedSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 880
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->media_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 886
    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->startTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 887
    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->spendTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 888
    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->getUrlTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 891
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->exceptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    iget-wide v4, p0, Lcom/tudou/service/download/DownloadInfo;->progress:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 893
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->retry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    iget-boolean v0, p0, Lcom/tudou/service/download/DownloadInfo;->isEncryption:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 897
    iget v0, p0, Lcom/tudou/service/download/DownloadInfo;->verCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    iget-boolean v0, p0, Lcom/tudou/service/download/DownloadInfo;->istrailer:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 899
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->register_num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/tudou/service/download/DownloadInfo;->license_num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 901
    iget-boolean v0, p0, Lcom/tudou/service/download/DownloadInfo;->vertical_player:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 902
    iget-boolean v0, p0, Lcom/tudou/service/download/DownloadInfo;->exclusive_logo:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 903
    return-void

    :cond_0
    move v0, v2

    .line 896
    goto :goto_0

    :cond_1
    move v0, v2

    .line 898
    goto :goto_1

    :cond_2
    move v0, v2

    .line 901
    goto :goto_2

    :cond_3
    move v1, v2

    .line 902
    goto :goto_3
.end method
