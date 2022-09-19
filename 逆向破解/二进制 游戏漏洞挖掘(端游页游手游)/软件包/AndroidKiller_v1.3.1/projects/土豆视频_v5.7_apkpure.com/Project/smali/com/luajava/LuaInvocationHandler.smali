.class public Lcom/luajava/LuaInvocationHandler;
.super Ljava/lang/Object;
.source "LuaInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private obj:Lcom/luajava/LuaObject;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaObject;)V
    .locals 0
    .param p1, "obj"    # Lcom/luajava/LuaObject;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/luajava/LuaInvocationHandler;->obj:Lcom/luajava/LuaObject;

    .line 46
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v4, p0, Lcom/luajava/LuaInvocationHandler;->obj:Lcom/luajava/LuaObject;

    iget-object v5, v4, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v5

    .line 55
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "methodName":Ljava/lang/String;
    iget-object v4, p0, Lcom/luajava/LuaInvocationHandler;->obj:Lcom/luajava/LuaObject;

    invoke-virtual {v4, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    .line 58
    .local v0, "func":Lcom/luajava/LuaObject;
    invoke-virtual {v0}, Lcom/luajava/LuaObject;->isNil()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    const/4 v2, 0x0

    monitor-exit v5

    .line 81
    :goto_0
    return-object v2

    .line 63
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 67
    .local v3, "retType":Ljava/lang/Class;
    const-class v4, Ljava/lang/Void;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, p3, v4}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 70
    const/4 v2, 0x0

    .line 81
    :cond_2
    :goto_1
    monitor-exit v5

    goto :goto_0

    .line 82
    .end local v0    # "func":Lcom/luajava/LuaObject;
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v3    # "retType":Ljava/lang/Class;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 74
    .restart local v0    # "func":Lcom/luajava/LuaObject;
    .restart local v1    # "methodName":Ljava/lang/String;
    .restart local v3    # "retType":Ljava/lang/Class;
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v0, p3, v4}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v2, v4, v6

    .line 75
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 77
    check-cast v2, Ljava/lang/Double;

    .end local v2    # "ret":Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .local v2, "ret":Ljava/lang/Number;
    goto :goto_1
.end method
