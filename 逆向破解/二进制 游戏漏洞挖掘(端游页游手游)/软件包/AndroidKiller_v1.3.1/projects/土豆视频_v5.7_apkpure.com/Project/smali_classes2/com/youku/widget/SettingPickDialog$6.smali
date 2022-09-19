.class Lcom/youku/widget/SettingPickDialog$6;
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
    .line 212
    iput-object p1, p0, Lcom/youku/widget/SettingPickDialog$6;->this$0:Lcom/youku/widget/SettingPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 217
    .local v0, "index":I
    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog$6;->this$0:Lcom/youku/widget/SettingPickDialog;

    invoke-static {v1, v0}, Lcom/youku/widget/SettingPickDialog;->access$000(Lcom/youku/widget/SettingPickDialog;I)V

    .line 218
    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog$6;->this$0:Lcom/youku/widget/SettingPickDialog;

    invoke-static {v1}, Lcom/youku/widget/SettingPickDialog;->access$400(Lcom/youku/widget/SettingPickDialog;)Landroid/widget/RadioButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 219
    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog$6;->this$0:Lcom/youku/widget/SettingPickDialog;

    invoke-static {v1}, Lcom/youku/widget/SettingPickDialog;->access$200(Lcom/youku/widget/SettingPickDialog;)Lcom/youku/widget/SettingPickDialog$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/SettingPickDialog$6;->this$0:Lcom/youku/widget/SettingPickDialog;

    invoke-static {v1}, Lcom/youku/widget/SettingPickDialog;->access$200(Lcom/youku/widget/SettingPickDialog;)Lcom/youku/widget/SettingPickDialog$OnClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/youku/widget/SettingPickDialog$OnClickListener;->onClick(I)V

    goto :goto_0
.end method
