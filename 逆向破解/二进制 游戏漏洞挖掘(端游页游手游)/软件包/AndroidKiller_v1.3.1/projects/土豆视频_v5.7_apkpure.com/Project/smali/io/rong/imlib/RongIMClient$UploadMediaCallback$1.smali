.class Lio/rong/imlib/RongIMClient$UploadMediaCallback$1;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onProgressCallback(Lio/rong/imlib/model/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

.field final synthetic val$message:Lio/rong/imlib/model/Message;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$UploadMediaCallback;Lio/rong/imlib/model/Message;I)V
    .locals 0

    .prologue
    .line 6117
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$UploadMediaCallback$1;->this$0:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$UploadMediaCallback$1;->val$message:Lio/rong/imlib/model/Message;

    iput p3, p0, Lio/rong/imlib/RongIMClient$UploadMediaCallback$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6120
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$UploadMediaCallback$1;->this$0:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$UploadMediaCallback$1;->val$message:Lio/rong/imlib/model/Message;

    iget v2, p0, Lio/rong/imlib/RongIMClient$UploadMediaCallback$1;->val$progress:I

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onProgress(Lio/rong/imlib/model/Message;I)V

    .line 6121
    return-void
.end method
