.class Lcn/domob/android/ads/a/e$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/e$7;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/e$7;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/e$7;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcn/domob/android/ads/a/e$7$2;->a:Lcn/domob/android/ads/a/e$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 325
    invoke-static {}, Lcn/domob/android/ads/a/e;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/e$7$2;->a:Lcn/domob/android/ads/a/e$7;

    iget-object v1, v1, Lcn/domob/android/ads/a/e$7;->a:Lcn/domob/android/ads/a/e;

    const-string v2, "Video play error."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x0

    return v0
.end method
