.class Lcom/youku/vo/SkipInfo$1;
.super Ljava/lang/Object;
.source "SkipInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/vo/SkipInfo;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/youku/vo/SkipInfo;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/youku/vo/SkipInfo$1;->this$0:Lcom/youku/vo/SkipInfo;

    iput-object p2, p0, Lcom/youku/vo/SkipInfo$1;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/youku/vo/SkipInfo$1;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 297
    return-void
.end method
