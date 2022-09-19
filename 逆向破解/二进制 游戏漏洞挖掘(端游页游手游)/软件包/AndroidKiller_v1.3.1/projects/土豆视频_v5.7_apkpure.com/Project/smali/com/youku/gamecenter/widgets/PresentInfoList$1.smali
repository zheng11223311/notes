.class Lcom/youku/gamecenter/widgets/PresentInfoList$1;
.super Ljava/lang/Object;
.source "PresentInfoList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/PresentInfoList;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/PresentInfoList;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/PresentInfoList;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList$1;->this$0:Lcom/youku/gamecenter/widgets/PresentInfoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList$1;->this$0:Lcom/youku/gamecenter/widgets/PresentInfoList;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->fetchGameList()V

    .line 107
    return-void
.end method
