.class Lcom/youdo/XNativeAdManager$AdUpdateIndictor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/XNativeAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdUpdateIndictor"
.end annotation


# static fields
.field private static final KEY_AD_UPDATE_TIME:Ljava/lang/String; = "__ad_update_time__master"

.field private static final TAG:Ljava/lang/String; = "AdUpdateIndictor"


# instance fields
.field private final SHARED_PREFERENCES_NAME:Ljava/lang/String;

.field private adUpdateTime:J

.field private listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/youdo/XNativeAdManager;


# direct methods
.method public constructor <init>(Lcom/youdo/XNativeAdManager;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ad_caching_flag"

    iput-object v0, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->SHARED_PREFERENCES_NAME:Ljava/lang/String;

    new-instance v0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor$1;

    invoke-direct {v0, p0}, Lcom/youdo/XNativeAdManager$AdUpdateIndictor$1;-><init>(Lcom/youdo/XNativeAdManager$AdUpdateIndictor;)V

    iput-object v0, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const-string v0, "ad_caching_flag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "__ad_update_time__master"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->adUpdateTime:J

    const-string v0, "AdUpdateIndictor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUpdateTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->adUpdateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$1500(Lcom/youdo/XNativeAdManager$AdUpdateIndictor;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public allowRefreshCaching()Ljava/lang/Boolean;
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->adUpdateTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    iget-object v2, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v2, v2, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-wide v2, v2, Lcom/youdo/XAdManagerContext;->mockInterval:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v2, v2, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-wide v2, v2, Lcom/youdo/XAdManagerContext;->mockInterval:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/32 v2, 0x15180

    cmp-long v2, v4, v2

    if-ltz v2, :cond_3

    move v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-wide/16 v2, 0x78

    cmp-long v2, v4, v2

    if-ltz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public refershCachingTimestamp()V
    .locals 4

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "__ad_update_time__master"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
