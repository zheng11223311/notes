.class Lcom/youku/gamecenter/widgets/GameImageShowDialog$1;
.super Ljava/lang/Object;
.source "GameImageShowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/GameImageShowDialog;->initImageViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/GameImageShowDialog;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/GameImageShowDialog;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$1;->this$0:Lcom/youku/gamecenter/widgets/GameImageShowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameImageShowDialog$1;->this$0:Lcom/youku/gamecenter/widgets/GameImageShowDialog;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameImageShowDialog;->dismiss()V

    .line 125
    return-void
.end method
