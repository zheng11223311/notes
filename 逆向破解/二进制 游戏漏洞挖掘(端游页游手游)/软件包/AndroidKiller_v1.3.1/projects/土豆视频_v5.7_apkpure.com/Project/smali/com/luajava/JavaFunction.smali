.class public abstract Lcom/luajava/JavaFunction;
.super Ljava/lang/Object;
.source "JavaFunction.java"


# instance fields
.field protected L:Lcom/luajava/LuaState;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaState;)V
    .locals 0
    .param p1, "L"    # Lcom/luajava/LuaState;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/luajava/JavaFunction;->L:Lcom/luajava/LuaState;

    .line 58
    return-void
.end method


# virtual methods
.method public abstract execute()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation
.end method

.method public getParam(I)Lcom/luajava/LuaObject;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/luajava/JavaFunction;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/luajava/JavaFunction;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/luajava/JavaFunction;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->pushJavaFunction(Lcom/luajava/JavaFunction;)V

    .line 83
    iget-object v0, p0, Lcom/luajava/JavaFunction;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
