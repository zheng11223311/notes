.class Lcom/youku/gamecenter/GameCenterModel$1;
.super Ljava/lang/Object;
.source "GameCenterModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameCenterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/youku/gamecenter/data/GameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameCenterModel;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameCenterModel;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/youku/gamecenter/GameCenterModel$1;->this$0:Lcom/youku/gamecenter/GameCenterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "rhs"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 91
    iget v0, p1, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    iget v1, p2, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, Lcom/youku/gamecenter/data/GameInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/youku/gamecenter/data/GameInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/youku/gamecenter/GameCenterModel$1;->compare(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameInfo;)I

    move-result v0

    return v0
.end method
