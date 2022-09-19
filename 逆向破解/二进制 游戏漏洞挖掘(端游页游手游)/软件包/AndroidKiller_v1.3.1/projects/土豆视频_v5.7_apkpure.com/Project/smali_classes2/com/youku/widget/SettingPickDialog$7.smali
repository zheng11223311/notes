.class Lcom/youku/widget/SettingPickDialog$7;
.super Ljava/lang/Object;
.source "SettingPickDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SettingPickDialog;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SettingPickDialog;


# direct methods
.method constructor <init>(Lcom/youku/widget/SettingPickDialog;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/youku/widget/SettingPickDialog$7;->this$0:Lcom/youku/widget/SettingPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog$7;->this$0:Lcom/youku/widget/SettingPickDialog;

    invoke-virtual {v0}, Lcom/youku/widget/SettingPickDialog;->dismiss()V

    .line 231
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog$7;->this$0:Lcom/youku/widget/SettingPickDialog;

    invoke-static {v0}, Lcom/youku/widget/SettingPickDialog;->access$500(Lcom/youku/widget/SettingPickDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/youku/widget/SettingPickDialog$7;->this$0:Lcom/youku/widget/SettingPickDialog;

    invoke-static {v0}, Lcom/youku/widget/SettingPickDialog;->access$500(Lcom/youku/widget/SettingPickDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 234
    :cond_0
    return-void
.end method
