.class public Lcom/youku/vo/HomeRecommend$HomeGroup;
.super Ljava/lang/Object;
.source "HomeRecommend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/HomeRecommend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeGroup"
.end annotation


# instance fields
.field public cells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HomeRecommend$Cell;",
            ">;"
        }
    .end annotation
.end field

.field public group:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/HomeRecommend;


# direct methods
.method public constructor <init>(Lcom/youku/vo/HomeRecommend;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/youku/vo/HomeRecommend$HomeGroup;->this$0:Lcom/youku/vo/HomeRecommend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
