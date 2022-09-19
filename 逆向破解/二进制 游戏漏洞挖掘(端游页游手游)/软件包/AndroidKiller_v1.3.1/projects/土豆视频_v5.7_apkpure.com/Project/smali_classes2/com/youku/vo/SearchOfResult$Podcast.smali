.class public Lcom/youku/vo/SearchOfResult$Podcast;
.super Ljava/lang/Object;
.source "SearchOfResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SearchOfResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Podcast"
.end annotation


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfPodcasts;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/SearchOfResult;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SearchOfResult;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/youku/vo/SearchOfResult$Podcast;->this$0:Lcom/youku/vo/SearchOfResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
