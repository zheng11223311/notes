.class Lcom/youku/player/ad/AdWebViewActivity$1;
.super Ljava/lang/Object;
.source "AdWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/AdWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/AdWebViewActivity;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/AdWebViewActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/youku/player/ad/AdWebViewActivity$1;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity$1;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-virtual {v0}, Lcom/youku/player/ad/AdWebViewActivity;->onBackPressed()V

    .line 85
    return-void
.end method
