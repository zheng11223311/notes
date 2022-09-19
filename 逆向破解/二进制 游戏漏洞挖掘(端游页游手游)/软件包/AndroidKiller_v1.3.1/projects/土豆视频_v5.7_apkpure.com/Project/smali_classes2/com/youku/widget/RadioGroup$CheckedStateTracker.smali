.class Lcom/youku/widget/RadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/RadioGroup;


# direct methods
.method private constructor <init>(Lcom/youku/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/youku/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/youku/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/widget/RadioGroup;Lcom/youku/widget/RadioGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/widget/RadioGroup;
    .param p2, "x1"    # Lcom/youku/widget/RadioGroup$1;

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/youku/widget/RadioGroup$CheckedStateTracker;-><init>(Lcom/youku/widget/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v1, p0, Lcom/youku/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/youku/widget/RadioGroup;

    invoke-static {v1}, Lcom/youku/widget/RadioGroup;->access$500(Lcom/youku/widget/RadioGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/youku/widget/RadioGroup;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/youku/widget/RadioGroup;->access$502(Lcom/youku/widget/RadioGroup;Z)Z

    .line 383
    iget-object v1, p0, Lcom/youku/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/youku/widget/RadioGroup;

    invoke-static {v1}, Lcom/youku/widget/RadioGroup;->access$600(Lcom/youku/widget/RadioGroup;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 384
    iget-object v1, p0, Lcom/youku/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/youku/widget/RadioGroup;

    iget-object v2, p0, Lcom/youku/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/youku/widget/RadioGroup;

    invoke-static {v2}, Lcom/youku/widget/RadioGroup;->access$600(Lcom/youku/widget/RadioGroup;)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/youku/widget/RadioGroup;->access$700(Lcom/youku/widget/RadioGroup;IZ)V

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/youku/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/youku/widget/RadioGroup;

    invoke-static {v1, v3}, Lcom/youku/widget/RadioGroup;->access$502(Lcom/youku/widget/RadioGroup;Z)Z

    .line 388
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 389
    .local v0, "id":I
    iget-object v1, p0, Lcom/youku/widget/RadioGroup$CheckedStateTracker;->this$0:Lcom/youku/widget/RadioGroup;

    invoke-static {v1, v0}, Lcom/youku/widget/RadioGroup;->access$800(Lcom/youku/widget/RadioGroup;I)V

    goto :goto_0
.end method
