.class Lcn/domob/android/ads/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/b;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/b;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcn/domob/android/ads/b$b;->a:Lcn/domob/android/ads/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcn/domob/android/ads/b$b;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->l()V

    .line 198
    return-void
.end method
