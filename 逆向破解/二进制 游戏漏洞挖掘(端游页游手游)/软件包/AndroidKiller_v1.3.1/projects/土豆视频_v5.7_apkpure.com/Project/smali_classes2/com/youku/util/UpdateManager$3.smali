.class Lcom/youku/util/UpdateManager$3;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/UpdateManager;->showNoticeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/util/UpdateManager;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/youku/util/UpdateManager;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/youku/util/UpdateManager$3;->this$0:Lcom/youku/util/UpdateManager;

    iput-object p2, p0, Lcom/youku/util/UpdateManager$3;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/youku/util/UpdateManager$3;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$500(Lcom/youku/util/UpdateManager;)Lcom/youku/util/UpdateManager$UpdateType;

    move-result-object v0

    sget-object v1, Lcom/youku/util/UpdateManager$UpdateType;->push:Lcom/youku/util/UpdateManager$UpdateType;

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/youku/util/UpdateManager$3;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 157
    iget-object v0, p0, Lcom/youku/util/UpdateManager$3;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 165
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/youku/util/UpdateManager$3;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$500(Lcom/youku/util/UpdateManager;)Lcom/youku/util/UpdateManager$UpdateType;

    move-result-object v0

    sget-object v1, Lcom/youku/util/UpdateManager$UpdateType;->force:Lcom/youku/util/UpdateManager$UpdateType;

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/youku/util/UpdateManager$3;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 160
    iget-object v0, p0, Lcom/youku/util/UpdateManager$3;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 161
    invoke-static {}, Lcom/tudou/android/Youku;->exit()V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/youku/util/UpdateManager$3;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    goto :goto_0
.end method
