.class Lcn/domob/android/ads/h$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/h$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/h$c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/h$c;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcn/domob/android/ads/h$c$1;->a:Lcn/domob/android/ads/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/h$c$1;->a:Lcn/domob/android/ads/h$c;

    iget-object v0, v0, Lcn/domob/android/ads/h$c;->a:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-static {}, Lcn/domob/android/ads/h;->b()Lcn/domob/android/ads/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
