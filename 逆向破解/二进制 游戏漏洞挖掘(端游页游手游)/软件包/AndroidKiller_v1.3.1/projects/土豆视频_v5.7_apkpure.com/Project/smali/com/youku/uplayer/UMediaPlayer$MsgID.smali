.class Lcom/youku/uplayer/UMediaPlayer$MsgID;
.super Ljava/lang/Object;
.source "UMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/uplayer/UMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgID"
.end annotation


# static fields
.field public static final ERROR_NETWORK_CHECK_10:I = 0x1f7

.field public static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field public static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_INFO_AD_CONNECT_DELAY:I = 0x44a

.field public static final MEDIA_INFO_AD_COUNT_DOWN:I = 0x410

.field public static final MEDIA_INFO_AD_HTTP_ERROR_4XX:I = 0x456

.field public static final MEDIA_INFO_BUFFERING_UPDATE:I = 0x407

.field public static final MEDIA_INFO_BUFFER_PERCENT:I = 0x8fd

.field public static final MEDIA_INFO_COMPLETED:I = 0x3e9

.field public static final MEDIA_INFO_CURRENT_POSITION_UPDATE:I = 0x7d0

.field public static final MEDIA_INFO_DATA_SOURCE_ERROR:I = 0x3ee

.field public static final MEDIA_INFO_END_LOADING:I = 0x3ec

.field public static final MEDIA_INFO_FRAMERATE_AUDIO:I = 0x385

.field public static final MEDIA_INFO_FRAMERATE_VIDEO:I = 0x384

.field public static final MEDIA_INFO_HTTP_AD_302_DELAY:I = 0x44c

.field public static final MEDIA_INFO_HTTP_VIDEO_302_DELAY:I = 0x44d

.field public static final MEDIA_INFO_HW_DECODE_ERROR:I = 0x7530

.field public static final MEDIA_INFO_HW_PLAYER_ERROR:I = 0x7531

.field public static final MEDIA_INFO_INDEX_AND_CDN_IP:I = 0x7d8

.field public static final MEDIA_INFO_MIDAD_DATA_SOURCE_ERROR:I = 0x899

.field public static final MEDIA_INFO_MID_AD_END:I = 0x3f6

.field public static final MEDIA_INFO_MID_AD_LOADING_START:I = 0x3fc

.field public static final MEDIA_INFO_MID_AD_START:I = 0x3f5

.field public static final MEDIA_INFO_NETWORK_CHECK:I = 0x7d4

.field public static final MEDIA_INFO_NETWORK_DISSCONNECTED:I = 0x3ed

.field public static final MEDIA_INFO_NETWORK_ERROR:I = 0x3f0

.field public static final MEDIA_INFO_NETWORK_LOW:I = 0x413

.field public static final MEDIA_INFO_NETWORK_SPEED:I = 0x8fc

.field public static final MEDIA_INFO_NETWORK_SPEED_UPDATE:I = 0x7d6

.field public static final MEDIA_INFO_PLAYERROR:I = 0x3ea

.field public static final MEDIA_INFO_PREPARED:I = 0x3e8

.field public static final MEDIA_INFO_PREPARED_AD_CHECK:I = 0x7d5

.field public static final MEDIA_INFO_PREPARED_MID_AD_CHECK:I = 0x898

.field public static final MEDIA_INFO_PREPARE_ERROR:I = 0x3ef

.field public static final MEDIA_INFO_PREPARE_TIMEOUT_ERROR:I = 0x3f2

.field public static final MEDIA_INFO_PRE_AD_END:I = 0x3f4

.field public static final MEDIA_INFO_PRE_AD_START:I = 0x3f3

.field public static final MEDIA_INFO_SEEK_ERROR:I = 0x3f1

.field public static final MEDIA_INFO_SET_VIDEO_SIZE:I = 0x406

.field public static final MEDIA_INFO_START_LOADING:I = 0x3eb

.field public static final MEDIA_INFO_SWITCH_FAILED:I = 0x3fe

.field public static final MEDIA_INFO_SWITCH_FINISH:I = 0x3fd

.field public static final MEDIA_INFO_VIDEO_CONNECT_DELAY:I = 0x44b

.field public static final MEDIA_INFO_VIDEO_END:I = 0x3fa

.field public static final MEDIA_INFO_VIDEO_HTTP_ERROR_4XX:I = 0x457

.field public static final MEDIA_INFO_VIDEO_START:I = 0x3f9

.field public static final MEDIA_NOP:I = 0x0

.field public static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field public static final MEDIA_PREPARED:I = 0x1

.field public static final MEDIA_SEEK_COMPLETE:I = 0x4

.field public static final MEDIA_SET_VIDEO_SIZE:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/youku/uplayer/UMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/youku/uplayer/UMediaPlayer;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/youku/uplayer/UMediaPlayer$MsgID;->this$0:Lcom/youku/uplayer/UMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
