.class Lcom/youdo/XNativeAdManager$AdUpdateIndictor$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/XNativeAdManager$AdUpdateIndictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youdo/XNativeAdManager$AdUpdateIndictor;


# direct methods
.method constructor <init>(Lcom/youdo/XNativeAdManager$AdUpdateIndictor;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor$1;->this$1:Lcom/youdo/XNativeAdManager$AdUpdateIndictor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor$1;->this$1:Lcom/youdo/XNativeAdManager$AdUpdateIndictor;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->access$1500(Lcom/youdo/XNativeAdManager$AdUpdateIndictor;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "__ad_update_time__master"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "AdUpdateIndictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--xx--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
