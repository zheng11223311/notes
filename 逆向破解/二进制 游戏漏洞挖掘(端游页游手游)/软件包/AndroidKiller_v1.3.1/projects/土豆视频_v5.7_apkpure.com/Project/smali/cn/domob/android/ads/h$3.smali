.class Lcn/domob/android/ads/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/h;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/android/ads/h;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcn/domob/android/ads/h$3;->b:Lcn/domob/android/ads/h;

    iput-object p2, p0, Lcn/domob/android/ads/h$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcn/domob/android/ads/h$3;->b:Lcn/domob/android/ads/h;

    iget-object v1, p0, Lcn/domob/android/ads/h$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/h;->loadUrl(Ljava/lang/String;)V

    .line 206
    return-void
.end method
