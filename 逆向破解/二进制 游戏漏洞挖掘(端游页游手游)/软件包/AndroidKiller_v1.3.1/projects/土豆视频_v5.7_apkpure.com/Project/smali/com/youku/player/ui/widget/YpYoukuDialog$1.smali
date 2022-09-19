.class Lcom/youku/player/ui/widget/YpYoukuDialog$1;
.super Ljava/lang/Object;
.source "YpYoukuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ui/widget/YpYoukuDialog;->setNormalListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ui/widget/YpYoukuDialog;


# direct methods
.method constructor <init>(Lcom/youku/player/ui/widget/YpYoukuDialog;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/youku/player/ui/widget/YpYoukuDialog$1;->this$0:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/player/ui/widget/YpYoukuDialog$1;->this$0:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-static {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->access$000(Lcom/youku/player/ui/widget/YpYoukuDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 63
    return-void
.end method
