.class Lcom/youku/widget/RadioGroup$2;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/RadioGroup;

.field final synthetic val$button:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/youku/widget/RadioGroup;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/youku/widget/RadioGroup$2;->this$0:Lcom/youku/widget/RadioGroup;

    iput-object p2, p0, Lcom/youku/widget/RadioGroup$2;->val$button:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 132
    iget-object v0, p0, Lcom/youku/widget/RadioGroup$2;->val$button:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/youku/widget/RadioGroup$2;->this$0:Lcom/youku/widget/RadioGroup;

    iget-object v1, p0, Lcom/youku/widget/RadioGroup$2;->val$button:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/youku/widget/RadioGroup;->access$300(Lcom/youku/widget/RadioGroup;Landroid/widget/RadioButton;)V

    .line 134
    iget-object v0, p0, Lcom/youku/widget/RadioGroup$2;->this$0:Lcom/youku/widget/RadioGroup;

    invoke-static {v0}, Lcom/youku/widget/RadioGroup;->access$400(Lcom/youku/widget/RadioGroup;)Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/youku/widget/RadioGroup$2;->this$0:Lcom/youku/widget/RadioGroup;

    invoke-static {v0}, Lcom/youku/widget/RadioGroup;->access$400(Lcom/youku/widget/RadioGroup;)Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/widget/RadioGroup$2;->this$0:Lcom/youku/widget/RadioGroup;

    iget-object v2, p0, Lcom/youku/widget/RadioGroup$2;->val$button:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/youku/widget/RadioGroup;I)V

    .line 137
    :cond_0
    return v3
.end method
