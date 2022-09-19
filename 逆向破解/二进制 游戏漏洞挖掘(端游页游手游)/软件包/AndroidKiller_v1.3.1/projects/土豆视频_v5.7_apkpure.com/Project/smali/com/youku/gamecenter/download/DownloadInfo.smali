.class public Lcom/youku/gamecenter/download/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    }
.end annotation


# static fields
.field public static final ARRAY_DIVIDER:Ljava/lang/String; = "array+_#_+divider"

.field public static final CLICK_CONTINUE:I = 0x0

.field public static final CLICK_PAUSE:I = 0x1

.field public static final CLICK_PENDING:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWNLOAD_TYPE_ADV:I = 0x1

.field public static final DOWNLOAD_TYPE_EXIST_IS_APP:I = 0x5

.field public static final DOWNLOAD_TYPE_NORMAL:I = 0x0

.field public static final DOWNLOAD_TYPE_SILENT:I = 0x2

.field public static final DOWNLOAD_TYPE_SILENT_GAME:I = 0x3

.field public static final DOWNLOAD_TYPE_SILENT_GAME_UPDATA:I = 0x4

.field public static final STATE_DELETED:I = 0x5

.field public static final STATE_DOWNLOADED:I = 0x4

.field public static final STATE_DOWNLODING:I = 0x1

.field public static final STATE_NULL:I = 0x0

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PENDING:I = 0x6

.field public static final STATE_STOP:I = 0x3


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

.field public mMd5ErrorTimes:I

.field public mNotificationID:I

.field public mPackageName:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mProgress:I

.field public mRichNotification:Z

.field public mSize:J

.field public mSource:Ljava/lang/String;

.field public mStartTrack:Ljava/lang/String;

.field public mState:I

.field public mStatistic:Ljava/lang/String;

.field public mType:I

.field public mVersion:I

.field public mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/youku/gamecenter/download/DownloadInfo$1;

    invoke-direct {v0}, Lcom/youku/gamecenter/download/DownloadInfo$1;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    .line 60
    iput v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    .line 62
    iput-boolean v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mRichNotification:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mMd5:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mLastModified:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadVelocity:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mStartTrack:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mEndTrack:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/youku/gamecenter/download/DownloadInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo$1;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    .line 60
    iput v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    .line 62
    iput-boolean v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mRichNotification:Z

    .line 65
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "progress"    # I
    .param p5, "version"    # I
    .param p6, "icon"    # Ljava/lang/String;
    .param p7, "duration"    # I
    .param p8, "source"    # Ljava/lang/String;
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "id"    # Ljava/lang/String;
    .param p11, "statistic"    # Ljava/lang/String;
    .param p12, "size"    # J
    .param p14, "type"    # I
    .param p15, "md5"    # Ljava/lang/String;
    .param p16, "versionName"    # Ljava/lang/String;
    .param p17, "lastModified"    # Ljava/lang/String;
    .param p18, "downloadWay"    # I
    .param p19, "clickState"    # I
    .param p20, "notificationID"    # I
    .param p21, "downVelocity"    # I
    .param p22, "startTrack"    # Ljava/lang/String;
    .param p23, "endTrack"    # Ljava/lang/String;
    .param p24, "currentLength"    # J

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v2, ""

    iput-object v2, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    .line 55
    const/4 v2, 0x0

    iput v2, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    .line 60
    const/4 v2, 0x0

    iput v2, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    .line 62
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mRichNotification:Z

    .line 76
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    .line 79
    iput p4, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 80
    iput-object p6, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    .line 81
    iput p5, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    .line 82
    iput p7, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    .line 83
    iput-object p8, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    .line 84
    iput-object p9, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    .line 85
    iput-object p10, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    .line 86
    iput-object p11, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    .line 87
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    .line 88
    move/from16 v0, p14

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    .line 89
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mMd5:Ljava/lang/String;

    .line 90
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    .line 91
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mLastModified:Ljava/lang/String;

    .line 92
    move/from16 v0, p18

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    .line 93
    move/from16 v0, p19

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    .line 94
    move/from16 v0, p20

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    .line 95
    move/from16 v0, p21

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadVelocity:I

    .line 96
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mStartTrack:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mEndTrack:Ljava/lang/String;

    .line 98
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    .line 99
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isCLickPause()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 316
    iget v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-wide v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mLastModified:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadVelocity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mStartTrack:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mEndTrack:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-wide v0, p0, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    return-void
.end method
