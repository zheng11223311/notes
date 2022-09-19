.class Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$3;
.super Ljava/lang/Object;
.source "DanmuSendDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dismiss()V

    .line 201
    return-void
.end method
