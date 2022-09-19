.class public abstract Lcom/punchbox/v4/n/b;
.super Ljava/lang/Object;


# static fields
.field public static final ADTYPE_BANNER:I = 0x1

.field public static final ADTYPE_FULL:I = 0x2

.field public static final ADTYPE_OFFERWALL:I = 0x5

.field public static final ADTYPE_OFFERWALL_TASK:I = 0x6

.field public static final ADTYPE_PREDOWNLAOD:I = 0x7

.field public static final ADTYPE_RECOMMEND:I = 0x3

.field public static final ADTYPE_UNKNOWN:I = 0x0

.field public static final EVENT_TYPE_CACHE_AD_CLICK:I = 0x29

.field public static final EVENT_TYPE_CACHE_AD_DISPLAY:I = 0x28

.field public static final EVENT_TYPE_CLICK:I = 0xa

.field public static final EVENT_TYPE_COUNTER:I = 0x6f

.field public static final EVENT_TYPE_DISPLAY_FAILED:I = 0x5

.field public static final EVENT_TYPE_DISPLAY_SUCCESS:I = 0x4

.field public static final EVENT_TYPE_LOADING:I = 0x8

.field public static final EVENT_TYPE_LOADING_MOREGAME_MORE:I = 0x9

.field public static final EVENT_TYPE_LOAD_RESOURCE_TIME:I = 0x7

.field public static final EVENT_TYPE_QUERY_POINTS:I = 0x78

.field public static final EVENT_TYPE_REQUEST:I = 0x1

.field public static final EVENT_TYPE_REQUEST_ERROR:I = 0x2

.field public static final EVENT_TYPE_UNKNOWN:I = 0x0

.field public static final PARAMETER_AD_TYPE:Ljava/lang/String; = "adtype"

.field public static final PARAMETER_ANDROID_ID:Ljava/lang/String; = "anid"

.field public static final PARAMETER_APP_VERSION:Ljava/lang/String; = "appv"

.field public static final PARAMETER_BRAND:Ljava/lang/String; = "brand"

.field public static final PARAMETER_CACHE_TYPE:Ljava/lang/String; = "ctp"

.field public static final PARAMETER_CELL_ID:Ljava/lang/String; = "cell"

.field public static final PARAMETER_CLICK_TYPE:Ljava/lang/String; = "clicktype"

.field public static final PARAMETER_COUNTRY_CODE:Ljava/lang/String; = "cc"

.field public static final PARAMETER_CURRENT_AD_TYPE:Ljava/lang/String; = "cadtype"

.field public static final PARAMETER_DENSITY:Ljava/lang/String; = "den"

.field public static final PARAMETER_DEVICE_TYPE:Ljava/lang/String; = "dt"

.field public static final PARAMETER_DURATION:Ljava/lang/String; = "dur"

.field public static final PARAMETER_END:Ljava/lang/String; = "ep"

.field public static final PARAMETER_ERR:Ljava/lang/String; = "err"

.field public static final PARAMETER_ERRS:Ljava/lang/String; = "errs"

.field public static final PARAMETER_EVENT_TYPE:Ljava/lang/String; = "evt"

.field public static final PARAMETER_IMEI:Ljava/lang/String; = "imei"

.field public static final PARAMETER_IMSI:Ljava/lang/String; = "imsi"

.field public static final PARAMETER_ISP:Ljava/lang/String; = "isp"

.field public static final PARAMETER_IS_PREDOWNLOAD:Ljava/lang/String; = "pred"

.field public static final PARAMETER_LAC:Ljava/lang/String; = "lac"

.field public static final PARAMETER_LANGUAGE:Ljava/lang/String; = "lang"

.field public static final PARAMETER_MCC:Ljava/lang/String; = "mcc"

.field public static final PARAMETER_MNC:Ljava/lang/String; = "mnc"

.field public static final PARAMETER_MOBILE_TECH:Ljava/lang/String; = "mt"

.field public static final PARAMETER_MODEL:Ljava/lang/String; = "model"

.field public static final PARAMETER_NETWORK_TYPE:Ljava/lang/String; = "net"

.field public static final PARAMETER_OFFLINE:Ljava/lang/String; = "ofl"

.field public static final PARAMETER_OS:Ljava/lang/String; = "os"

.field public static final PARAMETER_OS_VERSION:Ljava/lang/String; = "osv"

.field public static final PARAMETER_PACKAGENAME:Ljava/lang/String; = "pkg"

.field public static final PARAMETER_PLACEMENT_ID:Ljava/lang/String; = "placeid"

.field public static final PARAMETER_PUBLISHER_ID:Ljava/lang/String; = "pid"

.field public static final PARAMETER_RANDOM:Ljava/lang/String; = "rnd"

.field public static final PARAMETER_ROOT:Ljava/lang/String; = "jb"

.field public static final PARAMETER_SCREEN_HEIGHT:Ljava/lang/String; = "srh"

.field public static final PARAMETER_SCREEN_WIDTH:Ljava/lang/String; = "srw"

.field public static final PARAMETER_SDK_VERSION:Ljava/lang/String; = "sdkv"

.field public static final PARAMETER_SOURCE_FROM:Ljava/lang/String; = "sf"

.field public static final PARAMETER_START:Ljava/lang/String; = "sp"

.field public static final PARAMETER_TASK_STATS:Ljava/lang/String; = "taskstat"

.field public static final PARAMETER_TEST:Ljava/lang/String; = "test"

.field public static final PARAMETER_TIME:Ljava/lang/String; = "time"

.field public static final PARAMETER_TOTAL:Ljava/lang/String; = "tt"

.field public static final PARAMETER_TRIGGER_CACHE_TYPE:Ljava/lang/String; = "thp"

.field public static final PARAMETER_UNIQID:Ljava/lang/String; = "uniqid"

.field public static final PARAMETER_USER_AGENT:Ljava/lang/String; = "ua"

.field public static final PARAMETER_WMAC:Ljava/lang/String; = "wmac"


# instance fields
.field protected a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/punchbox/v4/n/b;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/punchbox/v4/n/b;->a:J

    return-void
.end method

.method public static final commonParams(Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Lcom/punchbox/util/b;->a()Lcom/punchbox/util/b;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "uniqid"

    invoke-virtual {v1}, Lcom/punchbox/util/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "wmac"

    invoke-virtual {v1}, Lcom/punchbox/util/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imei"

    invoke-virtual {v1}, Lcom/punchbox/util/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dt"

    invoke-virtual {v1}, Lcom/punchbox/util/b;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Android_Pad"

    :goto_1
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "osv"

    invoke-virtual {v1}, Lcom/punchbox/util/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os"

    const-string v2, "Android"

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "net"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/punchbox/util/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sdkv"

    const-string v2, "4.1.5"

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isp"

    invoke-virtual {v1}, Lcom/punchbox/util/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v0, "time"

    invoke-static {v2, v3}, Lcom/punchbox/util/i;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rnd"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "test"

    sget-boolean v0, Lcom/punchbox/v4/e/a;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imsi"

    invoke-virtual {v1}, Lcom/punchbox/util/b;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "anid"

    invoke-virtual {v1}, Lcom/punchbox/util/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ofl"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "Android"

    goto/16 :goto_1

    :cond_2
    const-string v0, "0"

    goto :goto_2
.end method


# virtual methods
.method public abstract getEntity()Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public getGetMethodUrl()Ljava/lang/String;
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/punchbox/v4/n/b;->needCommonParams()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/punchbox/v4/n/b;->commonParams(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/punchbox/v4/n/b;->getParams(Landroid/os/Bundle;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "bt"

    invoke-static {v1}, Lcom/punchbox/v4/g/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "&"

    const-string v2, "?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "RequestBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[request]]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract getParams(Landroid/os/Bundle;)V
.end method

.method public getRequestTime()J
    .locals 2

    iget-wide v0, p0, Lcom/punchbox/v4/n/b;->a:J

    return-wide v0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public needCommonParams()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
