.class Lcom/youku/widget/YoukuLoading$1;
.super Ljava/lang/Object;
.source "YoukuLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/YoukuLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/YoukuLoading;


# direct methods
.method constructor <init>(Lcom/youku/widget/YoukuLoading;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/youku/widget/YoukuLoading$1;->this$0:Lcom/youku/widget/YoukuLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 212
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 213
    return-void
.end method
