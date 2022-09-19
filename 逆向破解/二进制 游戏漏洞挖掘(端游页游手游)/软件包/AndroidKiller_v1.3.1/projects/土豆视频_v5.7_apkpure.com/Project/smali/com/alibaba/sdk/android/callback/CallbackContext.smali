.class public Lcom/alibaba/sdk/android/callback/CallbackContext;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field public static volatile activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile loginCallback:Ljava/lang/Object;

.field public static volatile tradeProcessCallback:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/callback/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/callback/CallbackContext;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "requestCodeKey"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/system/a;->g:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v4, Lcom/alibaba/sdk/android/ui/support/ActivityResultHandler;

    invoke-interface {v0, v4, v3}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/ui/support/ActivityResultHandler;

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/callback/CallbackContext;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No ActivityResultHandler handler to support the request code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/system/a;->g:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v4, Lcom/alibaba/sdk/android/ui/support/UserActivityResultHandler;

    invoke-interface {v0, v4, v3}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/ui/support/UserActivityResultHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, v6}, Lcom/alibaba/sdk/android/ui/support/UserActivityResultHandler;->onActivityResult(IILandroid/content/Intent;Ljava/util/Map;)V

    :goto_0
    return v1

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/callback/CallbackContext;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No UserActivityResultHandler handler to support the request code "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/alibaba/sdk/android/callback/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/alibaba/sdk/android/callback/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    sget-object v1, Lcom/alibaba/sdk/android/callback/CallbackContext;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No active activity is set, ignore invoke "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/alibaba/sdk/android/callback/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/sdk/android/ui/support/ActivityResultHandler;->onActivityResult(IIILandroid/content/Intent;Landroid/app/Activity;Ljava/util/Map;Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/alibaba/sdk/android/callback/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method
