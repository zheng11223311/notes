.class Lcom/tudou/detail/widget/VideoPlaylistBar$8$1;
.super Ljava/lang/Object;
.source "VideoPlaylistBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoPlaylistBar$8;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/widget/VideoPlaylistBar$8;

.field final synthetic val$mDialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoPlaylistBar$8;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8$1;->this$1:Lcom/tudou/detail/widget/VideoPlaylistBar$8;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8$1;->val$mDialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 436
    const-string v1, "t1.detail_sdetail.installnow"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 437
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8$1;->val$mDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v1}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "http://down.shouji.kuwo.cn/star/mobile/kwplayer_ar_257.apk"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 441
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$8$1;->this$1:Lcom/tudou/detail/widget/VideoPlaylistBar$8;

    iget-object v1, v1, Lcom/tudou/detail/widget/VideoPlaylistBar$8;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-virtual {v1}, Lcom/tudou/detail/widget/VideoPlaylistBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 443
    return-void
.end method
