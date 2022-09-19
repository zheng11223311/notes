.class Lcom/youku/gamecenter/widgets/YoukuGameDialog$1;
.super Ljava/lang/Object;
.source "YoukuGameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/YoukuGameDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/YoukuGameDialog;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/YoukuGameDialog;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog$1;->this$0:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/YoukuGameDialog$1;->this$0:Lcom/youku/gamecenter/widgets/YoukuGameDialog;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/YoukuGameDialog;->dismiss()V

    .line 51
    return-void
.end method
