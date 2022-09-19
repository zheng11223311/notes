.class public Lcom/youku/vo/PlaylistLastItem$Item;
.super Ljava/lang/Object;
.source "PlaylistLastItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/PlaylistLastItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public iid:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/PlaylistLastItem;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/PlaylistLastItem;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/youku/vo/PlaylistLastItem$Item;->this$0:Lcom/youku/vo/PlaylistLastItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
