.class Lcom/youdo/view/MraidActionHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youdo/controller/util/MraidPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/view/MraidActionHandler;->setPlayerListener(Lcom/youdo/controller/util/MraidPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/MraidActionHandler;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidActionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidActionHandler$1;->this$0:Lcom/youdo/view/MraidActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidActionHandler$1;->this$0:Lcom/youdo/view/MraidActionHandler;

    invoke-virtual {v0}, Lcom/youdo/view/MraidActionHandler;->finish()V

    return-void
.end method

.method public onError()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/MraidActionHandler$1;->this$0:Lcom/youdo/view/MraidActionHandler;

    invoke-virtual {v0}, Lcom/youdo/view/MraidActionHandler;->finish()V

    return-void
.end method

.method public onPrepared()V
    .locals 0

    return-void
.end method
