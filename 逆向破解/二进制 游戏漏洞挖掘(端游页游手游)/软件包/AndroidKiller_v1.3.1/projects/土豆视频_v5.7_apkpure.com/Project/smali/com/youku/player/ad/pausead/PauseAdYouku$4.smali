.class Lcom/youku/player/ad/pausead/PauseAdYouku$4;
.super Ljava/lang/Object;
.source "PauseAdYouku.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/pausead/PauseAdYouku;->creatSelectDownloadDialog(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

.field final synthetic val$downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/pausead/PauseAdYouku;Lcom/youku/player/ui/widget/YpYoukuDialog;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$4;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iput-object p2, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$4;->val$downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$4;->val$downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 233
    return-void
.end method
