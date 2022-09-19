.class Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;
.super Ljava/lang/Object;
.source "GameDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameWebviewErrorOnClickListener"
.end annotation


# instance fields
.field private mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0
    .param p2, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1741
    iput-object p2, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 1742
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1746
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$500(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1747
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$700(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1748
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$600(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1749
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$600(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->selected_card_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1750
    return-void
.end method
