# Unit
## Boundry conditions
- 0, 1 MAX, MIN
- Off by one (fencepost)

function example(int num){
    if(num > 3){
        return true;
    }
    else{
        return false;
    }
}

# Integration 

# Load

# IoC

## Lifecycles

### Singleton
- The first time they're requested

### Transient
- Created each time they're requested from the service container. 
- Best for lightweight, stateless services.
- Disposed at the end of the request.

### Scoped
- created once per client request (connection). 
- disposed at the end of the request.

# Mocking


# Performance
## Artillary
