.class Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$8;
.super Ljava/lang/Object;
.source "DanmuSendDialog.java"

# interfaces
.implements Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 304
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/youku/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Lcom/youku/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getColorCheck()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 309
    const-string v0, "bili.default.textcolor"

    invoke-static {v0, p2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 310
    return-void
.end method
