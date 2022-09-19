.class Lcom/youku/gamecenter/widgets/PresentInfoList$2;
.super Ljava/lang/Object;
.source "PresentInfoList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/PresentInfoList;->updateUI(Ljava/util/List;)V
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
    .line 197
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList$2;->this$0:Lcom/youku/gamecenter/widgets/PresentInfoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList$2;->this$0:Lcom/youku/gamecenter/widgets/PresentInfoList;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->access$000(Lcom/youku/gamecenter/widgets/PresentInfoList;)Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->notifyDataSetChanged()V

    .line 203
    return-void
.end method
