.class Lcom/tudou/ui/activity/DetailHLSActivity$2;
.super Ljava/lang/Object;
.source "DetailHLSActivity.java"

# interfaces
.implements Lcom/youku/player/apiservice/ILanguageCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailHLSActivity;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailHLSActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailHLSActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailHLSActivity$2;->this$0:Lcom/tudou/ui/activity/DetailHLSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    const-string v0, "language"

    const-string v1, "guoyu"

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
