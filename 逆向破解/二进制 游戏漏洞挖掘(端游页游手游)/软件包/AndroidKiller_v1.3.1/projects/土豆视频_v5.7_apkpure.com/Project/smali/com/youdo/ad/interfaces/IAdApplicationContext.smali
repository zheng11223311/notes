.class public interface abstract Lcom/youdo/ad/interfaces/IAdApplicationContext;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/events/IXYDEventDispatcher;


# static fields
.field public static final AD_CLOSE:Ljava/lang/String; = "ad_close"

.field public static final AD_ERROR:Ljava/lang/String; = "ad_error"

.field public static final AD_PREPARED:Ljava/lang/String; = "ad_prepared"

.field public static final AD_STOPED:Ljava/lang/String; = "ad_stop"

.field public static final AD_VIEW_MODE_CHANGE:Ljava/lang/String; = "ad_view_mode_change"

.field public static final VIDEO_PAUSE:Ljava/lang/String; = "video_pause"

.field public static final VIDEO_RESUME:Ljava/lang/String; = "video_resume"


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getAdData()Lcom/youdo/ad/interfaces/IAdDataVO;
.end method

.method public abstract getAdManager()Lcom/youdo/ad/interfaces/IAdManager;
.end method

.method public abstract getAppProfile()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getTimeout()I
.end method

.method public abstract getVerion()Ljava/lang/String;
.end method

.method public abstract getVideoState()Lorg/openad/constants/IOpenAdContants$VideoState;
.end method

.method public abstract getWMHtml5AdViewContainer()Landroid/widget/RelativeLayout;
.end method

.method public abstract getWebView()Lcom/youdo/view/MraidView;
.end method

.method public abstract getXAdSDKResource()Lcom/youdo/XAdSDKResource;
.end method

.method public abstract hide()V
.end method

.method public abstract load()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onPause()V
.end method

.method public abstract onRestart()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public abstract setAdData(Lorg/json/JSONObject;)V
.end method

.method public abstract setAppProfile(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTimeout(I)V
.end method

.method public abstract setVideoAdDuration(D)V
.end method

.method public abstract setVideoAdPlayheadTime(D)V
.end method

.method public abstract setVideoState(Lorg/openad/constants/IOpenAdContants$VideoState;)V
.end method

.method public abstract setWMHtml5AdViewContainer(Landroid/widget/RelativeLayout;)V
.end method

.method public abstract setXAdSDKResource(Lcom/youdo/XAdSDKResource;)V
.end method

.method public abstract show()V
.end method
