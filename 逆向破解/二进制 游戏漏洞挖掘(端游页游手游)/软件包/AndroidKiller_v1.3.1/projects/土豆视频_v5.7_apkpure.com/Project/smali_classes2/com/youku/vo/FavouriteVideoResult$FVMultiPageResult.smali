.class public Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;
.super Ljava/lang/Object;
.source "FavouriteVideoResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/FavouriteVideoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FVMultiPageResult"
.end annotation


# instance fields
.field public count:I

.field public result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouriteVideo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/FavouriteVideoResult;


# direct methods
.method public constructor <init>(Lcom/youku/vo/FavouriteVideoResult;)V
    .locals 1

    .prologue
    .line 15
    iput-object p1, p0, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->this$0:Lcom/youku/vo/FavouriteVideoResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->result:Ljava/util/ArrayList;

    return-void
.end method
